require_relative 'DataManipulation'

class CV
  def files
    dm = DataManipulation.new("/home/admin-r/file.csv")
    dm.display_details
    # dm.age
    # dm.name
    dm.write_csv("/home/admin-r/file2.csv")
  end
end
fil = CV.new
fil.files
