local git_worktree_setup, git_worktree = pcall(require, "git-worktree")
if not git_worktree_setup then
	return
end

git_worktree.setup({
	change_directory_command = "cd",
	update_on_change = true,
	update_on_change_command = "e .",
	clearjumps_on_change = true,
	autopush = false,
})
