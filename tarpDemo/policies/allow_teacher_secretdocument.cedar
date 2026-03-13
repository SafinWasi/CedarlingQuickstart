@id("allow_teacher_secretdocument")
permit(
  principal,
  action,
  resource is Jans::SecretDocument
) when {
  context has tokens.jans_id_token &&
  context.tokens.jans_id_token.hasTag("role") &&
  context.tokens.jans_id_token.getTag("role").contains("Teacher")
};