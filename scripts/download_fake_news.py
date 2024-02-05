from pydrive.auth import GoogleAuth
from pydrive.drive import GoogleDrive
from google.colab import auth
from oauth2client.client import GoogleCredentials

auth.authenticate_user()
gauth = GoogleAuth()
gauth.credentials = GoogleCredentials.get_application_default()
drive = GoogleDrive(gauth)

id = "1W7r4syQz5hmIHRIEELutpEj54obWnBPM"
imported = drive.CreateFile({'id': id})
imported.GetContentFile('Fake.csv')


id = "1pKEZvEG_ElUJd2F7sDmqVTy4v0kMb92R"
imported = drive.CreateFile({'id': id})
imported.GetContentFile('True.csv')
