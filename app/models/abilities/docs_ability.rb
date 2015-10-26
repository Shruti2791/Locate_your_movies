class DocsAbility < Documentation::Authorizer

  def can_add_page?(page)
    Rails.env.development? || Rails.env.staging?
  end

  def can_reposition_page?(page)
    Rails.env.development? || Rails.env.staging?
  end

  def can_delete_page?(page)
    Rails.env.development? || Rails.env.staging?
  end

  def can_edit_page?(page)
    Rails.env.development? || Rails.env.staging?
  end

  def can_upload?(page)
    Rails.env.development? || Rails.env.staging?
  end
end
