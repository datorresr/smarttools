module UsuariosHelper
    # Returns the Gravatar for the given user.
  def gravatar_for(usuario, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(usuario.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: usuario.nombre, class: "gravatar")
  end
end
