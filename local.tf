resource "local_file" "exemplo" {
    filename = "exemplo.txt"
    content = var.conteudo
}

data "local_file" "conteudo_exemplo" {
    filename = "exemplo.txt"
}

output "data-source-result" {
    value = data.local_file.conteudo_exemplo.content_base64
}

variable "conteudo" {
    type = string
    default = "Hello world"
}

output "id-do-arquivo" {
    value = resource.local_file.exemplo.id
}