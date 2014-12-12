require 'rails_helper'

feature "projects" do
  scenario "user creates a project" do
    visit root_path
    click_on "Projects"
    click_on "New project"
    fill_in "Name", with: "My new project"
    click_on "Create project"

    expect(page).to have_content("My new project")
  end

  scenario "user deletes a project" do
    project = Project.create(name:"My new project")

    visit root_path
    click_on "Projects"
    click_on "delete-project-#{project.id}-action"

    expect(page).to have_no_content("My new project")
  end

  scenario "user edits a project" do
    project = Project.create(name:"My new project")

    visit root_path
    click_on "Projects"
    click_on "edit-project-#{project.id}-action"
    fill_in "Name", with: "My new new project"
    click_on "Update project"

    expect(page).to have_content("My new new project")
  end

  scenario "user views a project" do
    project = Project.create(name:"My new project")

    visit root_path
    click_on "Projects"
    click_on "show-project-#{project.id}-action"

    expect(page).to have_content("My new project")
    expect(page).to have_no_content("Show")
  end
end
