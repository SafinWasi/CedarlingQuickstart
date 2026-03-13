@id("cannot_write_if_not_admin")
forbid (
  principal,
  action == Jans::Action::"Write",
  resource is Jans::Application
)
when {
  context has tokens.jans_id_token &&
  context.tokens.jans_id_token.hasTag("role") &&
  !context.tokens.jans_id_token.getTag("role").contains("admin")
};