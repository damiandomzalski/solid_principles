class Backup
  def save_data(service, object)
    service.new.call(object)
  end
end

class PrinterBackupService
  def call(object)
    "printing a million pages of #{object}"
  end
end

class DigitalBackupService
  def call(object)
    "saving #{object} in the cloud"
  end
end
