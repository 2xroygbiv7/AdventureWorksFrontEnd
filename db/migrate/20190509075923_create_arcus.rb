class CreateArcus < ActiveRecord::Migration[5.2]
  def change
    create_table :arcus do |t|
      t.string :IDCUST
      t.decimal :AUDTDATE
      t.decimal :AUDTTIME
      t.string :AUDTUSER
      t.string :AUDTORG
      t.string :TEXTSNAM
      t.string :IDGRP
      t.string :IDNATACCT
      t.integer :SWACTV
      t.decimal :DATEINAC
      t.decimal :DATELASTMN
      t.integer :SWHOLD
      t.decimal :DATESTART
      t.string :IDPPNT
      t.string :CODEDAB
      t.string :CODEDABRTG
      t.decimal :DATEDAB
      t.string :NAMECUST
      t.string :TEXTSTRE1
      t.string :TEXTSTRE2
      t.string :TEXTSTRE3
      t.string :TEXTSTRE4
      t.string :NAMECITY
      t.string :CODESTTE
      t.string :CODEPSTL
      t.string :CODECTRY
      t.string :NAMECTAC
      t.string :TEXTPHON1
      t.string :TEXTPHON2
      t.string :CODETERR
      t.string :IDACCTSET
      t.string :IDAUTOCASH
      t.string :IDBILLCYCL
      t.string :IDSVCCHRG
      t.string :IDDLNQ
      t.string :CODECURN
      t.integer :SWPRTSTMT
      t.integer :SWPRTDLNQ
      t.integer :SWBALFWD
      t.string :CODETERM
      t.string :IDRATETYPE
      t.string :CODETAXGRP
      t.string :IDTAXREGI1
      t.string :IDTAXREGI2
      t.string :IDTAXREGI3
      t.string :IDTAXREGI4
      t.string :IDTAXREGI5
      t.integer :TAXSTTS1
      t.integer :TAXSTTS2
      t.integer :TAXSTTS3
      t.integer :TAXSTTS4
      t.integer :TAXSTTS5
      t.decimal :AMTCRLIMT
      t.decimal :AMTBALDUET
      t.decimal :AMTBALDUEH
      t.decimal :DATELASTST
      t.decimal :AMTLASTSTT
      t.decimal :AMTLASTSTH
      t.decimal :DTBEGBALFW
      t.decimal :AMTBALFWDT
      t.decimal :AMTBALFWDH
      t.decimal :DTLASTRVAL
      t.decimal :AMTBALLARV
      t.decimal :CNTOPENINV
      t.decimal :CNTINVPAID
      t.decimal :DAYSTOPAY
      t.decimal :DATEINVCHI
      t.decimal :DATEBALHI
      t.decimal :DATEINVHIL
      t.decimal :DATEBALHIL
      t.decimal :DATELASTAC
      t.decimal :DATELASTIV
      t.decimal :DATELASTCR
      t.decimal :DATELASTDR
      t.decimal :DATELASTPA
      t.decimal :DATELASTDI
      t.decimal :DATELASTAD
      t.decimal :DATELASTWR
      t.decimal :DATELASTRI
      t.decimal :DATELASTIN
      t.decimal :DATELASTDQ
      t.string :IDINVCHI
      t.string :IDINVCHILY
      t.decimal :AMTINVHIT
      t.decimal :AMTBALHIT
      t.decimal :AMTINVHILT
      t.decimal :AMTBALHILT
      t.decimal :AMTLASTIVT
      t.decimal :AMTLASTCRT
      t.decimal :AMTLASTDRT
      t.decimal :AMTLASTPYT
      t.decimal :AMTLASTDIT
      t.decimal :AMTLASTADT
      t.decimal :AMTLASTWRT
      t.decimal :AMTLASTRIT
      t.decimal :AMTLASTINT
      t.decimal :AMTINVHIH
      t.decimal :AMTBALHIH
      t.decimal :AMTINVHILH
      t.decimal :AMTBALHILH
      t.decimal :AMTLASTIVH
      t.decimal :AMTLASTCRH
      t.decimal :AMTLASTDRH
      t.decimal :AMTLASTPYH
      t.decimal :AMTLASTDIH
      t.decimal :AMTLASTADH
      t.decimal :AMTLASTWRH
      t.decimal :AMTLASTRIH
      t.decimal :AMTLASTINH
      t.string :CODESLSP1
      t.string :CODESLSP2
      t.string :CODESLSP3
      t.string :CODESLSP4
      t.string :CODESLSP5
      t.decimal :PCTSASPLT1
      t.decimal :PCTSASPLT2
      t.decimal :PCTSASPLT3
      t.decimal :PCTSASPLT4
      t.decimal :PCTSASPLT5
      t.string :PRICLIST
      t.integer :CUSTTYPE
      t.decimal :AMTPDUE
      t.string :EMAIL1
      t.string :EMAIL2
      t.string :WEBSITE
      t.integer :BILLMETHOD
      t.string :PAYMCODE
      t.string :FOB
      t.string :SHPVIACODE
      t.string :SHPVIADESC
      t.integer :DELMETHOD
      t.string :PRIMSHIPTO
      t.string :CTACPHONE
      t.string :CTACFAX
      t.integer :SWPARTSHIP
      t.integer :SWWEBSHOP
      t.decimal :RTGPERCENT
      t.integer :RTGDAYS
      t.string :RTGTERMS
      t.decimal :RTGAMTTC
      t.decimal :RTGAMTHC
      t.integer :VALUES
      t.decimal :CNTPPDINVC
      t.decimal :AMTPPDINVT
      t.decimal :AMTPPDINVH
      t.decimal :DATELASTRF
      t.decimal :AMTLASTRFT
      t.decimal :AMTLASTRFH
      t.string :CODECHECK
      t.integer :NEXTCUID
      t.string :LOCATION
      t.integer :SWCHKLIMIT
      t.integer :SWCHKOVER
      t.integer :OVERDAYS
      t.decimal :OVERAMT
      t.integer :SWBACKORDR
      t.integer :SWCHKDUP

      t.timestamps
    end
  end
end