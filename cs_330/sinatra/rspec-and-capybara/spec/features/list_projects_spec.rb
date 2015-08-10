require_relative "../spec_helper"

RSpec.describe "listing projects" do
  it "displays list of existing projects" do
    p = Project.create(name: "Project 1", description: "First project")
    p2 = Project.create(name: "Project 2", description: "Second project")

    visit "/projects"
    expect(page.status_code).to eq(200)
    expect(page).to have_text(p.name)
    expect(page).to have_text(p2.name)
  end

  it "displays correct fields to create a new project" do
    visit "/projects/new"
    expect(page.status_code).to eq(200)
    expect(page).to have_field("name")
    expect(page).to have_field("description")
  end

  it "creating project" do
    visit "/projects/new"
    expect(page.status_code).to eq(200)
    fill_in "name", with: "Project 1"
    fill_in "description", with: "My first project"
    click_button "Create Project"
    expect(current_path).to eq("/projects")
    expect(page).to have_text("Project 1")
  end

  it "displays information about the project" do
    p = Project.create(name: "Project", description: "Project description")
    visit "/projects/#{p.id}"

    expect(page.status_code).to eq(200)
    expect(page).to have_text(p.name)
    expect(page).to have_text(p.description)
  end

  before do
    @project = Project.create(name: "Project", description: "Project description")
    visit "/projects/#{@project.id}/edit"
    expect(page.status_code).to eq(200)
  end

  it "displays informatin about project being edited" do
    expect(find_field("name").value).to eq(@project.name)
    expect(find_field("description").value).to eq(@project.description)
  end

  it "has proper form fields" do
    expect(page).to have_field("name")
    expect(page).to have_field("description")
  end
end