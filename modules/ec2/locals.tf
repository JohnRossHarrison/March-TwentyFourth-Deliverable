locals {
  build_path    = "../../build/ec2"
  ec2_file_list = fileset("${local.build_path}", "*.yml")

  ec2_object_list = {
    for filename in local.ec2_file_list :
    trimsuffix(filename, ".yml") => yamldecode(file("${local.build_path}/${filename}"))
  }
}
