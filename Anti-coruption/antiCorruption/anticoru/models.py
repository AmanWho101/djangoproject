from django.db import models

# Create your models here.

class RandomUser(models.Model):
    aid = models.AutoField(primary_key = True)
    complaint_key = models.IntegerField()

    def __self__(self):
        return "%s" %(self.complaint_key)

    def to_json(self):
        return {
			"aid": self.aid,
            "complaint_key": self.complaint_key,
						
				}
    class Meta:
        db_table="anonuser"

class Employee(models.Model):
    eid = models.AutoField(primary_key = True)
    ew_unit = models.CharField(max_length=255)
    efname = models.CharField(max_length=255)
    elname = models.CharField(max_length=255)
    eemail = models.CharField(max_length=255)
    eusername = models.CharField(max_length=255)
    epassword = models.CharField(max_length=255)

    def __self__(self):
        return "%s" %(self.eid)
    
    def to_json(self):
        return {
			"eid": self.eid,
            "ew_unit": self.ew_unit,
			"efname": self.efname,
            "elname": self.elname,
			"eemail": self.eemail,
            "epassword": self.epassword,
            "eusername": self.eusername
				
				}

    class Meta:
        db_table="employee"

class MessageUser(models.Model):
    mid = models.AutoField(primary_key = True)
    aid = models.ForeignKey(RandomUser, on_delete=models.CASCADE)
    m_ctype = models.CharField(max_length=255)
    m_sntitle = models.CharField(max_length=255)
    m_sname = models.CharField(max_length=255)
    m_snadress = models.CharField(max_length=255)
    m_snage = models.CharField(max_length=255)
    m_ccorg = models.CharField(max_length=255)
    m_cplace = models.CharField(max_length=255)
    m_ctime = models.CharField(max_length=255)
    m_bperson = models.CharField(max_length=255)
    m_nbperson = models.CharField(max_length=255)
    m_damege_em = models.CharField(max_length=255)
    m_sbmoney = models.CharField(max_length=255)
    m_psigned = models.CharField(max_length=255)
    m_loan = models.CharField(max_length=255)
    m_tax = models.CharField(max_length=255)
    m_file = models.CharField(max_length=255)
    m_audio = models.CharField(max_length=255)
    m_video = models.CharField(max_length=255)
    m_image = models.CharField(max_length=255)
    m_timestamp = models.DateTimeField(auto_now_add=True)
    
    def to_json(self):
        return {
                "mid": self.mid,
                "aid ": self.aid.complaint_key,
                "m_ctype": self.m_ctype,
                "m_sntitle ": self.m_sntitle,
                "m_sname ": self.m_sname,
                "m_snadress " : self.m_snadress,
                "m_snage  " : self.m_snage,
                "m_ccorg " : self.m_ccorg,
                "m_cplace" : self.m_cplace,
                "m_ctime  ": self.m_ctime,
                "m_bperson" : self.m_bperson,
                "m_nbperson ": self.m_nbperson,
                "m_damege_em" : self.m_damege_em,
                "m_sbmoney" : self.m_sbmoney,
                "m_psigned" : self.m_psigned,
                "m_loan " : self.m_loan,
                "m_tax " : self.m_tax,
                "m_file " : self.m_file,
                "m_audio ": self.m_audio,
                "m_video": self.m_video,
                "m_image": self.m_image,
                "m_timestamp": self.m_timestamp,
   
				}

    def __self__(self):
        # return "%s" %(self.mid)
        return "%s (%s)" % (
            self.name,
            ", ".join(aid.aid for aid in self.aid.all()),
        )
    
    class Meta:
        db_table="message"

class Result(models.Model):
    rid = models.AutoField(primary_key = True)
    aid = models.ForeignKey(RandomUser, on_delete=models.CASCADE)
    mid = models.ForeignKey(MessageUser, on_delete=models.CASCADE)
    eid = models.ForeignKey(Employee, on_delete=models.CASCADE)
    rApproveorReject = models.CharField(max_length = 255)
    rReason = models.CharField(max_length = 255)
    rfeedback = models.CharField(max_length = 255)
    rcomment = models.CharField(max_length = 255)
    rstatus_bar = models.CharField(max_length = 255)
    
    def to_json(self):
        return {
			"rid": self.rid,
            "aid": self.aid,
			"mid": self.mid,
            "eid": self.eid,
			"rApproveorReject": self.rApproveorReject,
            "rReason": self.rReason,
            "rfeedback": self.rfeedback,
            "rcomment": self.rcomment,
            "rstatus_bar": self.rstatus_bar,
				
				}
    def __self__(self):
        return "%s (%s)" % (
            self.name,
            ", ".join(aid.aid for aid in self.aid.all()),
            ", ".join(mid.mid for mid in self.mid.all()),
        )

    class Meta:
        db_table="result"