# encoding: utf-8
class FileUploader < CarrierWave::Uploader::Base
   include Cloudinary::CarrierWave
end
