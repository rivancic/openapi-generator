
install.packages("petstore_1.0.0.tar.gz",repos=NULL, type="source")
library(petstore)
library(jsonlite)

var_status <- list("something inside", "explode please", "123") # array[character] | Status values that need to be considered for filter

# Finds Pets by status
api_instance <- petstore_api$new()
# Configure OAuth2 access token for authorization: petstore_auth
#api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$pet_api$find_pets_by_status(var_status, data_file = "result.txt"),
             api_instance$pet_api$find_pets_by_status(var_status),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `find_pets_by_status`:")
  dput(result$ApiException$toString())
  # error object
  dput(result$ApiException$error_object$toJSONString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result)
}



var_tags <- c("innerzzzzzzz", "second,example", "345") # array[character] | Tags to filter by

# Finds Pets by tags
api_instance <- petstore_api$new()
# Configure OAuth2 access token for authorization: petstore_auth
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$pet_api$find_pets_by_tags(var_tags, data_file = "result.txt"),
             api_instance$pet_api$find_pets_by_tags(var_tags),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `find_pets_by_tags`:")
  dput(result$ApiException$toString())
  # error object
  dput(result$ApiException$error_object$toJSONString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result)
}

invokeRestart("abort")

t <- Tag$new()
t$id <- 123
t$additional_properties <- c("abc" = 849, "array" = list('a', 'b', 'c'))
t$additional_properties
t$additional_properties["abc"]
t$additional_properties["array"]

print(t)
#print(t$toJSON())
#print(t$toJSONString())

print("done tag")

  whale_json <- '{"className": "whale", "hasBaleen": true, "hasTeeth": true}'
  zebra_json <- '{"className": "zebra", "type": "plains"}'

  mammal <- Mammal$new()
  mammal$fromJSON(whale_json)

api_client <- ApiClient$new()
api_client$username <- "username999"
api_client$password <- "password888"

api_wrapper <- petstore_api$new(api_client)
# test api_client in pet_api of the wrapper
cat(api_wrapper$pet_api$api_client$username)
cat(api_wrapper$pet_api$api_client$password)

#cat(address(api_client))
#cat(address(api_wrapper$pet_api$api_client)
#cat(address(api_wrapper$api_client$api_client)

print("DONE")

var_pet <- Pet$new("name_example", list("photoUrls_example"), 56, Category$new(56, "name_example"), list(Tag$new(56, "name_example")), "available") # Pet | Pet object that needs to be added to the store
print(var_pet)

print("DONE print")
#Add a new pet to the store
api_instance <- PetApi$new()
# Configure OAuth2 access token for authorization: petstore_auth
api_instance$api_client$access_token <- 'TODO_YOUR_ACCESS_TOKEN';
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$AddPet(var_pet, data_file = "result.txt"),
             api_instance$add_pet(var_pet),
             ApiException = function(ex) ex
          )

var_pet_id <- 56 # integer | ID of pet to return

pet_response <- api_instance$get_pet_by_id(var_pet_id, data_file = "get_pet_by_id.json")
response <- read_json("get_pet_by_id.json")
dput(response)
#
## test streaming
#api_instance$get_pet_by_id_streaming(var_pet_id, stream_callback = function(x) { print(x) })

##Find pet by ID (streaming)
#api_instance <- PetApi$new()
## Configure API key authorization: api_key
#api_instance$api_client$api_keys['api_key'] <- 'TODO_YOUR_API_KEY';
#result <- tryCatch(
#             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#             # api_instance$GetPetByIdStreaming(var_pet_id, data_file = "result.txt"),
#             api_instance$GetPetByIdStreaming(var_pet_id, stream_callback = function(x) { print(x) }),
#             ApiException = function(ex) ex
#          )
# In case of error, print the error object
#if (!is.null(result$ApiException)) {
#  cat(result$ApiException$toString())
#} #else {
#  # deserialized response object
#  response.object <- result$content
#  # response headers
#  response.headers <- result$response$headers
#  # response status code
#  response.status.code <- result$response$status_code
#}

##errorMsg <- "{\"code\":1,\"type\":\"error\",\"message\":\"Pet not found\"}"
###errorMsg <- '{"code": 404, "message": "Not found"}'
##a <- ModelApiResponse$new()$fromJSONString(errorMsg)
##dput(a)
##
##var_pet_id <- 1231256 # integer | ID of pet to return
##
###Find pet by ID
##api_instance <- PetApi$new()
### Configure API key authorization: api_key
##api_instance$api_client$api_keys['api_key'] <- 'TODO_YOUR_API_KEY';
##result <- tryCatch(
##             api_instance$GetPetById(var_pet_id),
##             ApiException = function(ex) ex
##          )
### In case of error, print the error object
##if(!is.null(result$ApiException)) {
##  cat(result$ApiException$toString())
##} else {
##  # deserialized response object
##  response.object <- result$content
##  # response headers
##  response.headers <- result$response$headers
##  # response status code
##  response.status.code <- result$response$status_code
##}
#
#json2 <-
#'{"name": "pet", "photoUrls" : ["http://a.com", "http://b.com"]}'
#
#jsonlite::minify(json2)
#
#pet_api <- PetApi$new()
#pet_id <- 123321
#pet <- Pet$new("name_test",
#  photoUrls = list("photo_test", "second test"),
#  category = Category$new(id = 450, name = "test_cat"),
#  id = pet_id,
#  tags = list(
#    Tag$new(id = 123, name = "tag_test"), Tag$new(id = 456, name = "unknown")
#  ),
#  status = "available"
#)
#
##jsonlite::minify(pet$toJSONString())
##cat(pet$toJSONString())
#toString(pet$toString())
#
##json <-
##'[
##  {"Name" : "Mario", "Age" : 32, "Occupation" : "Plumber"}, 
##  {"Name" : "Peach", "Age" : 21, "Occupation" : "Princess"},
##  {},
##  {"Name" : "Bowser", "Occupation" : "Koopa"}
##]'
##
##
###Pet$public_methods
###Pet$public_methods$fromJSON(json)
###Pet$public_methods$toJson()
###Pet$public_methods$validateJSON(json2)
###Pet$public_methods$validateJson(json)
###Pet$my_static_method <- function(x) { x + 2}
###Pet$public_methods$my_static_method(1)
##
#  basque_pig_json <-
#  '{"className2": "BasquePig", "color": "red"}'
## 
##  danish_pig_json <-
##  '{"className2": "DanishPig", "size": 7}'
## 
##  wrong_json <- 
##  '[
##    {"Name" : "Tom", "Age" : 32, "Occupation" : "Consultant"}, 
##    {},
##    {"Name" : "Ada", "Occupation" : "Engineer"}
##  ]'
##
##  print("==========") 
#  pig <- Pig$new()
#  basque_pig <- pig$fromJSON(basque_pig_json)
##  #print(basque_pig$actual_instance$color)
##  #expect_equal(basque_pig$actual_type, "BasquePig")
##  pig$fromJSON(danish_pig_json)
##  #pig$fromJSON(wrong_json)
##  pig$toJSON()
##
##  #d <- DanishPig$new()
##  #dp <- d$validateJSON(danish_pig_json)
##
##
#
## test nested oneOf
#nested_oneof <- NestedOneOf$new()
#nested_oneof$nested_pig <- pig
#nested_oneof$size <- 15
#
#cat(nested_oneof$toJSONString())
#



