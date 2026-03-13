@id("allow_student_read")
permit (
  principal,
  action in [Jans::Action::"Read"],
  resource
) when {
  context has tokens.jans_id_token &&
  context.tokens.jans_id_token.hasTag("role") &&
  context.tokens.jans_id_token.getTag("role").contains("Student")
};