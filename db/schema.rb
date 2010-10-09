# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101009143432) do

  create_table "advantages", :force => true do |t|
    t.integer "company_id"
    t.string  "period",     :limit => 10
    t.float   "eurofondy"
  end

  create_table "advokati", :id => false, :force => true do |t|
    t.string "_record_id",            :limit => 500
    t.string "titul_advokata",        :limit => 500
    t.string "meno_advokata",         :limit => 500
    t.string "priezvisko_advokata",   :limit => 500
    t.string "advokatska_spolocnost", :limit => 500
    t.string "adresa",                :limit => 500
    t.string "mesto",                 :limit => 500
    t.string "psc",                   :limit => 500
    t.string "poznamka",              :limit => 500
    t.string "datum_aktualizacie",    :limit => 500
  end

  create_table "asistenti_poslancov", :id => false, :force => true do |t|
    t.string "_record_id",                :limit => 500
    t.string "meno_asistenta",            :limit => 500
    t.string "priezvisko_asistenta",      :limit => 500
    t.string "meno_prenajimatela",        :limit => 500
    t.string "priezvisko_prenajimatela",  :limit => 500
    t.string "meno_poslanca",             :limit => 500
    t.string "priezvisko_poslanca",       :limit => 500
    t.string "strana",                    :limit => 500
    t.string "volebne_obdobie",           :limit => 500
    t.string "poznamka",                  :limit => 500
    t.string "zdroj",                     :limit => 500
    t.string "aktualizovane",             :limit => 500
    t.string "prenajimatel_kancelarie_1", :limit => 500
    t.string "prenajimatel_kancelarie_2", :limit => 500
    t.string "prenajimatel_kancelarie_3", :limit => 500
    t.string "prenajimatel_kancelarie_4", :limit => 500
    t.string "prenajimatel_kancelarie_5", :limit => 500
    t.string "prenajimatel_kancelarie_6", :limit => 500
    t.string "mesto_prenajimatela_2",     :limit => 500
    t.string "mesto_prenajimatela_1",     :limit => 500
    t.string "mesto_prenajimatela_3",     :limit => 500
    t.string "mesto_prenajimatela_4",     :limit => 500
    t.string "mesto_prenajimatela_5",     :limit => 500
    t.string "mesto_prenajimatela_6",     :limit => 500
  end

  create_table "auditori", :id => false, :force => true do |t|
    t.string "_record_id",         :limit => 500
    t.string "firma",              :limit => 500
    t.string "titul",              :limit => 500
    t.string "meno",               :limit => 500
    t.string "priezvisko",         :limit => 500
    t.string "adresa",             :limit => 500
    t.string "mesto",              :limit => 500
    t.string "psc",                :limit => 500
    t.string "cislo_licencie",     :limit => 500
    t.string "typ_auditora",       :limit => 500
    t.string "stav",               :limit => 500
    t.string "poznamka",           :limit => 500
    t.string "datum_aktualizacie", :limit => 500
  end

  create_table "close_companies", :force => true do |t|
    t.integer "company_id"
    t.integer "close_company_id"
  end

  create_table "companies", :force => true do |t|
    t.string  "name", :limit => 200
    t.integer "ico"
  end

  create_table "company_political_parties", :force => true do |t|
    t.integer "political_party_id"
    t.integer "company_id"
    t.string  "period",             :limit => 10
  end

  create_table "danove_ulavy", :id => false, :force => true do |t|
    t.string "_record_id", :limit => 500
    t.string "firma",      :limit => 500
    t.string "titul",      :limit => 500
    t.string "meno",       :limit => 500
    t.string "priezvisko", :limit => 500
    t.string "rok",        :limit => 500
    t.string "poznamka",   :limit => 500
    t.string "poznamka2",  :limit => 500
  end

  create_table "danovi_dlznici", :id => false, :force => true do |t|
    t.string "_record_id",               :limit => 500
    t.string "ico",                      :limit => 500
    t.string "titul",                    :limit => 500
    t.string "priezvisko",               :limit => 500
    t.string "meno",                     :limit => 500
    t.string "mesto",                    :limit => 500
    t.string "firma",                    :limit => 500
    t.string "danovy_nedoplatok",        :limit => 500
    t.string "datum_aktualizacie",       :limit => 500
    t.string "mena",                     :limit => 500
    t.string "poznamka",                 :limit => 500
    t.string "zdroj",                    :limit => 500
    t.string "dph",                      :limit => 500
    t.string "dan_zavisla_cinnost",      :limit => 500
    t.string "dan_ina_cinnost",          :limit => 500
    t.string "dan_cestna",               :limit => 500
    t.string "dan_nerezident",           :limit => 500
    t.string "dan_nepriama",             :limit => 500
    t.string "dan_do_1992",              :limit => 500
    t.string "dan_zrazka",               :limit => 500
    t.string "dan_dedicstvo",            :limit => 500
    t.string "dan_darovanie",            :limit => 500
    t.string "dan_prevod_nehnutelnosti", :limit => 500
    t.string "spotrebna_dan_paliva",     :limit => 500
    t.string "spotrebna_dan_lieh",       :limit => 500
    t.string "spotrebna_dan_pivo",       :limit => 500
    t.string "spotrebna_dan_tabak",      :limit => 500
    t.string "spotrebna_dan_vino",       :limit => 500
    t.string "pokuty_danovej_kontroly",  :limit => 500
    t.string "dan_po",                   :limit => 500
    t.string "dan_po_cudzina",           :limit => 500
    t.string "dan_motorove_vozidla",     :limit => 500
  end

  create_table "dary_statnym_instituciam", :id => false, :force => true do |t|
    t.string "_record_id",          :limit => 500
    t.string "titul_darcu",         :limit => 500
    t.string "meno_darcu",          :limit => 500
    t.string "priezvisko_darcu",    :limit => 500
    t.string "firma_darcu",         :limit => 500
    t.string "ico_darcu",           :limit => 500
    t.string "adresa_darcu",        :limit => 500
    t.string "mesto_darcu",         :limit => 500
    t.string "hodnota_daru",        :limit => 500
    t.string "mena",                :limit => 500
    t.string "forma_daru",          :limit => 500
    t.string "prijimatel",          :limit => 500
    t.string "poznamka",            :limit => 500
    t.string "poznamka2",           :limit => 500
    t.string "rok",                 :limit => 500
    t.string "obdobie_prijatia_od", :limit => 500
    t.string "obdobie_prijatia_do", :limit => 500
  end

  create_table "deblokacie", :id => false, :force => true do |t|
    t.string "_record_id",                :limit => 500
    t.string "firma",                     :limit => 500
    t.string "vyska_pohladavky",          :limit => 500
    t.string "mena",                      :limit => 500
    t.string "naklady_odmena_text",       :limit => 500
    t.string "dlznik_krajina",            :limit => 500
    t.string "sposob_vysporiadania",      :limit => 500
    t.string "poznamka",                  :limit => 500
    t.string "nazov_dokumentu",           :limit => 500
    t.string "forma",                     :limit => 500
    t.string "datum_zmluvy",              :limit => 500
    t.string "datum_ukoncenia_platnosti", :limit => 500
  end

  create_table "dotacie_kultura", :id => false, :force => true do |t|
    t.string "_record_id",             :limit => 500
    t.string "titul_prijimatela",      :limit => 500
    t.string "meno_prijimatela",       :limit => 500
    t.string "priezvisko_prijimatela", :limit => 500
    t.string "firma_prijimatela",      :limit => 500
    t.string "ico_prijimatela",        :limit => 500
    t.string "adresa_prijimatela",     :limit => 500
    t.string "mesto_prijimatela",      :limit => 500
    t.string "psc_prijimatela",        :limit => 500
    t.string "okres_prijimatela",      :limit => 500
    t.string "kraj_prijimatela",       :limit => 500
    t.string "cerpanie_dotacie",       :limit => 500
    t.string "mena",                   :limit => 500
    t.string "rozpocet_dotacie",       :limit => 500
    t.string "ucel_dotacie",           :limit => 500
    t.string "poskytovatel_dotacie",   :limit => 500
    t.string "rok",                    :limit => 500
    t.string "poznamka",               :limit => 500
    t.string "poznamka2",              :limit => 500
    t.string "datum_zmluvy",           :limit => 500
  end

  create_table "dotacie_samosprava", :id => false, :force => true do |t|
    t.string "_record_id",             :limit => 500
    t.string "titul_prijimatela",      :limit => 500
    t.string "meno_prijimatela",       :limit => 500
    t.string "priezvisko_prijimatela", :limit => 500
    t.string "firma_prijimatela",      :limit => 500
    t.string "ico_prijimatela",        :limit => 500
    t.string "adresa_prijimatela",     :limit => 500
    t.string "mesto_prijimatela",      :limit => 500
    t.string "vyska_dotacie",          :limit => 500
    t.string "mena",                   :limit => 500
    t.string "ucel_dotacie",           :limit => 500
    t.string "typ_dotacie",            :limit => 500
    t.string "poskytovatel_dotacie",   :limit => 500
    t.string "forma_dotacie",          :limit => 500
    t.string "rok",                    :limit => 500
    t.string "poznamka",               :limit => 500
    t.string "pozadovana_dotacia",     :limit => 500
    t.string "hodnota_projektu",       :limit => 500
    t.string "datum_schvalenia",       :limit => 500
    t.string "datum_obdobie_od",       :limit => 500
    t.string "datum_obdobie_do",       :limit => 500
  end

  create_table "dotacie_vystavba", :id => false, :force => true do |t|
    t.string "_record_id",                 :limit => 500
    t.string "firma_prijimatela",          :limit => 500
    t.string "ico_prijimatela",            :limit => 500
    t.string "meno_prijimatela",           :limit => 500
    t.string "priezvisko_prijimatela",     :limit => 500
    t.string "mesto_prijimatela",          :limit => 500
    t.string "okres",                      :limit => 500
    t.string "kraj",                       :limit => 500
    t.string "pozadovana_dotacia",         :limit => 500
    t.string "pridelena_dotacia",          :limit => 500
    t.string "hodnota_projektu",           :limit => 500
    t.string "mena",                       :limit => 500
    t.string "ucel_dotacie",               :limit => 500
    t.string "typ_dotacie",                :limit => 500
    t.string "poznamka",                   :limit => 500
    t.string "rok",                        :limit => 500
    t.string "poskytovatel_dotacie",       :limit => 500
    t.string "pocet_bytov",                :limit => 500
    t.string "dotacia_vodovod",            :limit => 500
    t.string "dotacia_kanalizacia",        :limit => 500
    t.string "dotacia_elektricke_vedenia", :limit => 500
    t.string "dotacia_komunikacie",        :limit => 500
    t.string "dotacia_plynovod",           :limit => 500
  end

  create_table "dve_percenta", :id => false, :force => true do |t|
    t.string "_record_id",   :limit => 500
    t.string "prijimatel",   :limit => 500
    t.string "adresa_ulica", :limit => 500
    t.string "ico",          :limit => 500
    t.string "mesto",        :limit => 500
    t.string "suma",         :limit => 500
    t.string "mena",         :limit => 500
    t.string "percento",     :limit => 500
    t.string "rok",          :limit => 500
    t.string "poznamka",     :limit => 500
  end

  create_table "eurofondy", :id => false, :force => true do |t|
    t.string "_record_id",              :limit => 500
    t.string "titul_prijimatela",       :limit => 500
    t.string "meno_prijimatela",        :limit => 500
    t.string "priezvisko_prijimatela",  :limit => 500
    t.string "firma_prijimatela",       :limit => 500
    t.string "ico_prijimatela",         :limit => 500
    t.string "adresa_prijimatela",      :limit => 500
    t.string "mesto_prijimatela",       :limit => 500
    t.string "psc_prijimatela",         :limit => 500
    t.float  "pozadovana_suma"
    t.float  "vyska_grantu"
    t.float  "schvalena_suma"
    t.float  "vlastne_zdroje"
    t.float  "celkovy_rozpocet"
    t.string "nesplnenie_podmienok",    :limit => 500
    t.float  "vyplatena_suma"
    t.float  "cerpana_suma"
    t.string "mena",                    :limit => 500
    t.string "podiel_prijimatela",      :limit => 500
    t.string "poskytovatel_dotacie",    :limit => 500
    t.string "sprostred_organ",         :limit => 500
    t.string "rezort",                  :limit => 500
    t.string "datum_komisie",           :limit => 500
    t.string "datum_prjatia_ziadosti",  :limit => 500
    t.string "datum_rozhodnutia",       :limit => 500
    t.string "datum_poskytnutia",       :limit => 500
    t.string "registracne_cislo",       :limit => 500
    t.string "ucel_dotacie",            :limit => 500
    t.string "zdroj_dotacie",           :limit => 500
    t.string "program",                 :limit => 500
    t.string "typ_dotacie",             :limit => 500
    t.string "meno_fondu",              :limit => 500
    t.string "cislo_rozhodnutia",       :limit => 500
    t.string "region_projektu",         :limit => 500
    t.string "poznamka",                :limit => 500
    t.string "poznamka2",               :limit => 500
    t.string "rok",                     :limit => 500
    t.string "datum_zaciatku_projektu", :limit => 500
    t.string "datum_konca_projektu",    :limit => 500
  end

  create_table "europolitika", :id => false, :force => true do |t|
    t.string "_record_id",         :limit => 500
    t.string "titul",              :limit => 500
    t.string "meno",               :limit => 500
    t.string "priezvisko",         :limit => 500
    t.string "bydlisko",           :limit => 500
    t.string "strana",             :limit => 500
    t.string "stranprisl",         :limit => 500
    t.string "zamestnanie",        :limit => 500
    t.string "poradie",            :limit => 500
    t.string "vek",                :limit => 500
    t.string "rok",                :limit => 500
    t.string "datum_aktualizacie", :limit => 500
    t.string "pozicia",            :limit => 500
    t.string "poznamka",           :limit => 500
    t.string "zdroj",              :limit => 500
  end

  create_table "funkcionari_stran", :id => false, :force => true do |t|
    t.string "_record_id",         :limit => 500
    t.string "titul",              :limit => 500
    t.string "meno",               :limit => 500
    t.string "priezvisko",         :limit => 500
    t.string "funkcia",            :limit => 500
    t.string "strana",             :limit => 500
    t.string "datum_aktualizacie", :limit => 500
    t.string "poznamka",           :limit => 500
    t.string "zdroj_informacie",   :limit => 500
  end

  create_table "ine_dotacie", :id => false, :force => true do |t|
    t.string "_record_id",              :limit => 500
    t.string "titul_prijimatela",       :limit => 500
    t.string "meno_prijimatela",        :limit => 500
    t.string "priezvisko_prijimatela",  :limit => 500
    t.string "firma_prijimatela",       :limit => 500
    t.string "ico_prijimatela",         :limit => 500
    t.string "adresa_prijimatela",      :limit => 500
    t.string "firma_sprostredkovatela", :limit => 500
    t.string "vyska_dotacie",           :limit => 500
    t.string "mena",                    :limit => 500
    t.string "rok",                     :limit => 500
    t.string "ziadana_suma",            :limit => 500
    t.string "cerpana_suma",            :limit => 500
    t.string "ucel_dotacie",            :limit => 500
    t.string "poznamka",                :limit => 500
    t.string "poskytovatel_dotacie",    :limit => 500
    t.string "typ_dotacie",             :limit => 500
    t.string "cislo_projektu",          :limit => 500
    t.string "poznamka2",               :limit => 500
    t.string "datum_schvalenia",        :limit => 500
    t.string "datum_prijatia_ziadosti", :limit => 500
  end

  create_table "justicia_osoby", :id => false, :force => true do |t|
    t.string "_record_id",         :limit => 500
    t.string "titul",              :limit => 500
    t.string "meno",               :limit => 500
    t.string "priezvisko",         :limit => 500
    t.string "funkcia",            :limit => 500
    t.string "posobisko",          :limit => 500
    t.string "obvod_posobenia",    :limit => 500
    t.string "adresa",             :limit => 500
    t.string "mesto",              :limit => 500
    t.string "psc",                :limit => 500
    t.string "poznamka",           :limit => 500
    t.string "telefonne_cislo",    :limit => 500
    t.string "fax",                :limit => 500
    t.string "datum_aktualizacie", :limit => 500
    t.string "odbor",              :limit => 500
    t.string "zdroj_informacie",   :limit => 500
    t.string "funkcne_obdobie_od", :limit => 500
    t.string "funkcne_obdobie_do", :limit => 500
  end

  create_table "komisie_pre_dotacie", :id => false, :force => true do |t|
    t.string "_record_id",    :limit => 500
    t.string "titul",         :limit => 500
    t.string "meno",          :limit => 500
    t.string "priezvisko",    :limit => 500
    t.string "nazov_komisie", :limit => 500
    t.string "firma",         :limit => 500
    t.string "funkcia",       :limit => 500
    t.string "datum",         :limit => 500
    t.string "poznamka",      :limit => 500
    t.string "institucia",    :limit => 500
  end

  create_table "konsolidacna", :id => false, :force => true do |t|
    t.string "_record_id",          :limit => 500
    t.string "firma_dlznika",       :limit => 500
    t.string "ico_dlznika",         :limit => 500
    t.string "titul_dlznika",       :limit => 500
    t.string "meno_dlznika",        :limit => 500
    t.string "priezvisko_dlznika",  :limit => 500
    t.string "mesto_dlznika",       :limit => 500
    t.string "meno_dlznika2",       :limit => 500
    t.string "dlzna_suma",          :limit => 500
    t.string "mena",                :limit => 500
    t.string "poznamka",            :limit => 500
    t.string "datum_aktualizacie",  :limit => 500
    t.string "pravna_forma_firmy",  :limit => 500
    t.string "cislo_pohladavky",    :limit => 500
    t.string "psc_dlznika",         :limit => 500
    t.string "priezvisko_dlznika2", :limit => 500
    t.string "meno_dlznika3",       :limit => 500
    t.string "priezvisko_dlznika3", :limit => 500
  end

  create_table "obcianske_zdruzenia", :id => false, :force => true do |t|
    t.string "_record_id",             :limit => 500
    t.string "nazov_zdruzenia",        :limit => 500
    t.string "mesto",                  :limit => 500
    t.string "adresa",                 :limit => 500
    t.string "datum_aktualizacie",     :limit => 500
    t.string "psc",                    :limit => 500
    t.string "typ_organizacie",        :limit => 500
    t.string "registrovy_urad",        :limit => 500
    t.string "meno_likvidatora",       :limit => 500
    t.string "meno_konatela1",         :limit => 500
    t.string "meno_konatela2",         :limit => 500
    t.string "meno_konatela3",         :limit => 500
    t.string "meno_konatela4",         :limit => 500
    t.string "priezvisko_likvidatora", :limit => 500
    t.string "priezvisko_konatela1",   :limit => 500
    t.string "priezvisko_konatela2",   :limit => 500
    t.string "priezvisko_konatela3",   :limit => 500
    t.string "priezvisko_konatela4",   :limit => 500
    t.string "titul_likvidatora",      :limit => 500
    t.string "titul_konatela1",        :limit => 500
    t.string "titul_konatela2",        :limit => 500
    t.string "titul_konatela3",        :limit => 500
    t.string "titul_konatela4",        :limit => 500
    t.string "poznamka",               :limit => 500
  end

  create_table "odpustene_clo", :id => false, :force => true do |t|
    t.string "_record_id",             :limit => 500
    t.string "firma_deklaranta",       :limit => 500
    t.string "titul_deklaranta",       :limit => 500
    t.string "meno_deklaranta",        :limit => 500
    t.string "priezvisko_deklaranta",  :limit => 500
    t.string "ico",                    :limit => 500
    t.string "adresa",                 :limit => 500
    t.string "psc",                    :limit => 500
    t.string "mesto",                  :limit => 500
    t.string "paragraf",               :limit => 500
    t.string "celkova_odpustena_suma", :limit => 500
    t.string "mena",                   :limit => 500
    t.string "rok",                    :limit => 500
    t.string "colny_urad",             :limit => 500
    t.string "poznamka",               :limit => 500
    t.string "poznamka2",              :limit => 500
  end

  create_table "organisations", :id => false, :force => true do |t|
    t.string "_record_id",     :limit => 500
    t.string "name",           :limit => 500
    t.string "ico",            :limit => 500
    t.string "address",        :limit => 500
    t.string "legal_form",     :limit => 500
    t.string "region",         :limit => 500
    t.string "date_start",     :limit => 500
    t.string "date_end",       :limit => 500
    t.string "activity1",      :limit => 500
    t.string "activity2",      :limit => 500
    t.string "account_sector", :limit => 500
    t.string "ownership",      :limit => 500
    t.string "size",           :limit => 500
    t.string "source_url",     :limit => 500
  end

  create_table "political_parties", :force => true do |t|
    t.string "name", :limit => 100
  end

  create_table "polnodotacie", :id => false, :force => true do |t|
    t.string "_record_id",              :limit => 500
    t.string "titul_prijimatela",       :limit => 500
    t.string "meno_prijimatela",        :limit => 500
    t.string "priezvisko_prijimatela",  :limit => 500
    t.string "firma_prijimatela",       :limit => 500
    t.string "ico_prijimatela",         :limit => 500
    t.string "adresa_prijimatela",      :limit => 500
    t.string "psc_prijimatela",         :limit => 500
    t.string "mesto_prijimatela",       :limit => 500
    t.string "region",                  :limit => 500
    t.string "pozadovana_suma",         :limit => 500
    t.string "suma_dotacie",            :limit => 500
    t.string "mena",                    :limit => 500
    t.string "rok",                     :limit => 500
    t.string "ucel_dotacie",            :limit => 500
    t.string "cislo_vynosu",            :limit => 500
    t.string "poznamka",                :limit => 500
    t.string "paragraf",                :limit => 500
    t.string "datum_zasadania_komisie", :limit => 500
    t.string "datum_ziadosti",          :limit => 500
    t.string "datum_prijatia_ziadosti", :limit => 500
    t.string "dokument",                :limit => 500
  end

  create_table "polnodotacie_du", :id => false, :force => true do |t|
    t.string "_record_id",             :limit => 500
    t.string "titul_prijimatela",      :limit => 500
    t.string "meno_prijimatela",       :limit => 500
    t.string "priezvisko_prijimatela", :limit => 500
    t.string "firma_prijimatela",      :limit => 500
    t.string "ico_prijimatela",        :limit => 500
    t.string "adresa_prijimatela",     :limit => 500
    t.string "mesto_prijimatela",      :limit => 500
    t.string "psc_prijimatela",        :limit => 500
    t.string "suma_dotacie",           :limit => 500
    t.string "mena",                   :limit => 500
    t.string "ucel_dotacie",           :limit => 500
    t.string "rok",                    :limit => 500
    t.string "poznamka",               :limit => 500
    t.string "dokument",               :limit => 500
  end

  create_table "poradcovia", :id => false, :force => true do |t|
    t.string "_record_id",         :limit => 500
    t.string "titul_poradcu",      :limit => 500
    t.string "meno_poradcu",       :limit => 500
    t.string "priezvisko_poradcu", :limit => 500
    t.string "ministerstvo",       :limit => 500
    t.string "funkcia",            :limit => 500
    t.string "statut_poradcu",     :limit => 500
    t.string "zmluva",             :limit => 500
    t.string "poznamka",           :limit => 500
    t.string "funkcne_obdobie",    :limit => 500
    t.string "obdobie_od",         :limit => 500
    t.string "obdobie_do",         :limit => 500
    t.string "datum_aktualizacie", :limit => 500
  end

  create_table "pozemkovy_fond", :id => false, :force => true do |t|
    t.string "_record_id",                    :limit => 500
    t.string "firma_zakaznika",               :limit => 500
    t.string "titul_zakaznika",               :limit => 500
    t.string "meno_zakaznika",                :limit => 500
    t.string "priezvisko_zakaznika",          :limit => 500
    t.string "adresa_zakaznika",              :limit => 500
    t.string "mesto_zakaznika",               :limit => 500
    t.string "cena",                          :limit => 500
    t.string "mena",                          :limit => 500
    t.string "vymera_pozemku",                :limit => 500
    t.string "forma_zmluvy",                  :limit => 500
    t.string "meno_manzelky_zakaznika",       :limit => 500
    t.string "priezvisko_manzelky_zakaznika", :limit => 500
    t.string "poznamka",                      :limit => 500
    t.string "poznamka2",                     :limit => 500
    t.string "kto_dal",                       :limit => 500
    t.string "vymera1",                       :limit => 500
    t.string "vymera2",                       :limit => 500
    t.string "vymera3",                       :limit => 500
    t.string "vymera4",                       :limit => 500
    t.string "vymera5",                       :limit => 500
    t.string "vymera6",                       :limit => 500
    t.string "vymera7",                       :limit => 500
    t.string "vymera8",                       :limit => 500
    t.string "vymera9",                       :limit => 500
    t.string "zmluva_od",                     :limit => 500
    t.string "zmluva_do",                     :limit => 500
  end

  create_table "pozicky_stranam", :id => false, :force => true do |t|
    t.string "_record_id",               :limit => 500
    t.string "titul_poskytovatela",      :limit => 500
    t.string "meno_poskytovatela",       :limit => 500
    t.string "priezvisko_poskytovatela", :limit => 500
    t.string "firma_poskytovatela",      :limit => 500
    t.string "ICO",                      :limit => 500
    t.string "psc",                      :limit => 500
    t.string "mesto_poskytovatela",      :limit => 500
    t.string "vyska_pozicky",            :limit => 500
    t.string "mena",                     :limit => 500
    t.string "strana",                   :limit => 500
    t.string "rok_vyrocnej_spravy",      :limit => 500
    t.string "datum_prijatia",           :limit => 500
    t.string "datum_splatenia",          :limit => 500
    t.string "datum_terminu_splatenia",  :limit => 500
    t.string "poznamka",                 :limit => 500
  end

  create_table "privatizacia_predaje", :id => false, :force => true do |t|
    t.string "_record_id",            :limit => 500
    t.string "privatizovana_firma",   :limit => 500
    t.string "adresa_privatizovanej", :limit => 500
    t.string "binalncne_ocenenie",    :limit => 500
    t.string "podiel",                :limit => 500
    t.string "firma_kupujuceho",      :limit => 500
    t.string "meno_kupujuceho",       :limit => 500
    t.string "priezvisko_kupujuceho", :limit => 500
    t.string "titul_kupujuceho",      :limit => 500
    t.string "adresa_kupujuceho",     :limit => 500
    t.string "kupna_cena",            :limit => 500
    t.string "mena",                  :limit => 500
    t.string "datum_predaja",         :limit => 500
    t.string "forma_privatizacie",    :limit => 500
    t.string "predavajuci",           :limit => 500
    t.string "poznamka",              :limit => 500
  end

  create_table "privatizacia_rozhodnutia", :id => false, :force => true do |t|
    t.string "_record_id",              :limit => 500
    t.string "privatizovana_firma",     :limit => 500
    t.string "hodnota_podniku",         :limit => 500
    t.string "cena_predavana_cast",     :limit => 500
    t.string "mena",                    :limit => 500
    t.string "metoda_privatizacie",     :limit => 500
    t.string "podiel_predavanej_casti", :limit => 500
    t.string "povodny_rezort_podniku",  :limit => 500
    t.string "rok_privatizacie",        :limit => 500
    t.string "datum_uznesenia",         :limit => 500
    t.string "cislo_uznesenia",         :limit => 500
    t.string "kto_rozhodol",            :limit => 500
    t.string "poznamka",                :limit => 500
  end

  create_table "procurements", :id => false, :force => true do |t|
    t.string "_record_id",             :limit => 500
    t.string "obstaravatel_adresa",    :limit => 500
    t.string "obstaravatel_psc",       :limit => 500
    t.string "obstaravatel_mesto",     :limit => 500
    t.string "dodavatel_adresa",       :limit => 500
    t.string "dodavatel_psc",          :limit => 500
    t.string "dodavatel_mesto",        :limit => 500
    t.string "dodavatel_mesto_rel",    :limit => 500
    t.string "obstaravatel_mesto_rel", :limit => 500
    t.string "druh_postupu",           :limit => 500
    t.string "vestnik_datum",          :limit => 500
    t.string "year",                   :limit => 500
    t.string "bulletin_id",            :limit => 500
    t.string "procurement_id",         :limit => 500
    t.string "procurement_subject",    :limit => 500
    t.string "price",                  :limit => 500
    t.string "currency",               :limit => 500
    t.string "is_VAT_included",        :limit => 500
    t.string "source_url",             :limit => 500
    t.string "customer_company_name",  :limit => 500
    t.string "customer_ico",           :limit => 500
    t.string "supplier_company_name",  :limit => 500
    t.string "supplier_ico",           :limit => 500
    t.string "supplier_region",        :limit => 500
  end

  create_table "procurements_2", :id => false, :force => true do |t|
    t.string "_record_id",            :limit => 500
    t.string "id",                    :limit => 500
    t.string "year",                  :limit => 500
    t.string "bulletin_id",           :limit => 500
    t.string "procurement_id",        :limit => 500
    t.string "customer_ico",          :limit => 500
    t.string "customer_company_name", :limit => 500
    t.string "supplier_ico",          :limit => 500
    t.string "supplier_company_name", :limit => 500
    t.string "supplier_region",       :limit => 500
    t.string "procurement_subject",   :limit => 500
    t.string "price",                 :limit => 500
    t.string "currency",              :limit => 500
    t.string "is_VAT_included",       :limit => 500
    t.string "customer_ico_evidence", :limit => 500
    t.string "supplier_ico_evidence", :limit => 500
    t.string "subject_evidence",      :limit => 500
    t.string "price_evidence",        :limit => 500
    t.string "procurement_type_id",   :limit => 500
    t.string "document_id",           :limit => 500
    t.string "source_url",            :limit => 500
    t.string "batch_record_code",     :limit => 500
  end

  create_table "sponzori_politikov", :id => false, :force => true do |t|
    t.string "_record_id",          :limit => 500
    t.string "titul_darcu",         :limit => 500
    t.string "meno_darcu",          :limit => 500
    t.string "priezvisko_darcu",    :limit => 500
    t.string "firma_darcu",         :limit => 500
    t.string "adresa_darcu",        :limit => 500
    t.string "mesto_darcu",         :limit => 500
    t.string "psc_darcu",           :limit => 500
    t.string "titul_politika",      :limit => 500
    t.string "meno_politika",       :limit => 500
    t.string "priezvisko_politika", :limit => 500
    t.string "hodnota_daru",        :limit => 500
    t.string "mena",                :limit => 500
    t.string "rok",                 :limit => 500
    t.string "udalost",             :limit => 500
    t.string "poznamka",            :limit => 500
  end

  create_table "sponzori_stran", :id => false, :force => true do |t|
    t.string "_record_id",       :limit => 500
    t.string "meno_darcu",       :limit => 500
    t.string "priezvisko_darcu", :limit => 500
    t.string "titul_darcu",      :limit => 500
    t.string "firma_darcu",      :limit => 500
    t.string "ico_darcu",        :limit => 500
    t.float  "hodnota_daru"
    t.string "mena",             :limit => 500
    t.string "adresa_darcu",     :limit => 500
    t.string "psc_darcu",        :limit => 500
    t.string "mesto_darcu",      :limit => 500
    t.string "strana",           :limit => 500
    t.string "rok",              :limit => 500
    t.string "datum_prijatia",   :limit => 500
    t.string "poznamka",         :limit => 500
  end

  add_index "sponzori_stran", ["strana"], :name => "sponzori_stran_strana"

  create_table "statne_podniky", :id => false, :force => true do |t|
    t.string "_record_id",         :limit => 500
    t.string "titul_vedenia",      :limit => 500
    t.string "meno_vedenia",       :limit => 500
    t.string "priezvisko_vedenia", :limit => 500
    t.string "pozicia",            :limit => 500
    t.string "firma",              :limit => 500
    t.string "adresa",             :limit => 500
    t.string "psc",                :limit => 500
    t.string "mesto",              :limit => 500
    t.string "rezort",             :limit => 500
    t.string "poznamka",           :limit => 500
  end

  create_table "statni_tajomnici", :id => false, :force => true do |t|
    t.string "_record_id",      :limit => 500
    t.string "titul",           :limit => 500
    t.string "meno",            :limit => 500
    t.string "priezvisko",      :limit => 500
    t.string "funkcia",         :limit => 500
    t.string "ministerstvo",    :limit => 500
    t.string "funkcne_obdobie", :limit => 500
    t.string "obdobie_do",      :limit => 500
    t.string "poznamka",        :limit => 500
  end

  create_table "stranicke_clenske_prispevky", :id => false, :force => true do |t|
    t.string "_record_id",      :limit => 500
    t.string "titul",           :limit => 500
    t.string "meno",            :limit => 500
    t.string "priezvisko",      :limit => 500
    t.string "psc",             :limit => 500
    t.string "mesto",           :limit => 500
    t.string "strana",          :limit => 500
    t.string "vyska_prispevku", :limit => 500
    t.string "mena",            :limit => 500
    t.string "rok",             :limit => 500
    t.string "datum_prijatia",  :limit => 500
    t.string "poznamka",        :limit => 500
  end

  create_table "vedenie_ministerstiev", :id => false, :force => true do |t|
    t.string "_record_id",         :limit => 500
    t.string "titul",              :limit => 500
    t.string "meno",               :limit => 500
    t.string "priezvisko",         :limit => 500
    t.string "institucia",         :limit => 500
    t.string "funkcia",            :limit => 500
    t.string "odbor",              :limit => 500
    t.string "sidlo_institucie",   :limit => 500
    t.string "delegovany_za",      :limit => 500
    t.string "poznamka",           :limit => 500
    t.string "zdroj_informacie",   :limit => 500
    t.string "datum_aktualizacie", :limit => 500
    t.string "obdobie_od",         :limit => 500
    t.string "obdobie_do",         :limit => 500
  end

  create_table "vedenie_rozpoctovych_org", :id => false, :force => true do |t|
    t.string "_record_id",         :limit => 500
    t.string "titul",              :limit => 500
    t.string "meno",               :limit => 500
    t.string "priezvisko",         :limit => 500
    t.string "nazov_organizacie",  :limit => 500
    t.string "pozicia",            :limit => 500
    t.string "typ_organizacie",    :limit => 500
    t.string "adresa_organizacie", :limit => 500
    t.string "mesto_organizacie",  :limit => 500
    t.string "rezort",             :limit => 500
    t.string "rok",                :limit => 500
    t.string "zdroj_informacie",   :limit => 500
    t.string "poznamka",           :limit => 500
  end

  create_table "vedenie_uradov", :id => false, :force => true do |t|
    t.string "_record_id",         :limit => 500
    t.string "titul",              :limit => 500
    t.string "meno",               :limit => 500
    t.string "priezvisko",         :limit => 500
    t.string "funkcia",            :limit => 500
    t.string "mesto",              :limit => 500
    t.string "kraj",               :limit => 500
    t.string "region",             :limit => 500
    t.string "urad",               :limit => 500
    t.string "zdroj",              :limit => 500
    t.string "poznamka",           :limit => 500
    t.string "datum_aktualizacie", :limit => 500
    t.string "obdobie_od",         :limit => 500
    t.string "obdobie_do",         :limit => 500
  end

  create_table "velvyslanci", :id => false, :force => true do |t|
    t.string "_record_id",         :limit => 500
    t.string "titul",              :limit => 500
    t.string "meno",               :limit => 500
    t.string "priezvisko",         :limit => 500
    t.string "institucia",         :limit => 500
    t.string "sidlo",              :limit => 500
    t.string "poznamka",           :limit => 500
    t.string "datum_aktualizacie", :limit => 500
    t.string "obdobie_do",         :limit => 500
    t.string "obdobie_od",         :limit => 500
  end

  create_table "verejne_obstaravania_mib", :id => false, :force => true do |t|
    t.string "id",                    :limit => 500
    t.string "year",                  :limit => 500
    t.string "bulletin_id",           :limit => 500
    t.string "procurement_id",        :limit => 500
    t.string "customer_ico",          :limit => 500
    t.string "supplier_ico",          :limit => 500
    t.string "procurement_subject",   :limit => 500
    t.string "price",                 :limit => 500
    t.string "currency",              :limit => 500
    t.string "is_VAT_included",       :limit => 500
    t.string "customer_ico_evidence", :limit => 500
    t.string "supplier_ico_evidence", :limit => 500
    t.string "subject_evidence",      :limit => 500
    t.string "price_evidence",        :limit => 500
    t.string "document_id",           :limit => 500
    t.string "extract_id",            :limit => 500
    t.string "supplier_name",         :limit => 500
    t.string "customer_name",         :limit => 500
  end

  create_table "vlady_sr", :id => false, :force => true do |t|
    t.string "_record_id",   :limit => 500
    t.string "meno",         :limit => 500
    t.string "priezvisko",   :limit => 500
    t.string "funkcia",      :limit => 500
    t.string "ministerstvo", :limit => 500
    t.string "obdobie",      :limit => 500
    t.string "obdobie_do",   :limit => 500
  end

  create_table "volebni_kandidati", :id => false, :force => true do |t|
    t.string "_record_id",       :limit => 500
    t.string "titul",            :limit => 500
    t.string "meno",             :limit => 500
    t.string "priezvisko",       :limit => 500
    t.string "strana",           :limit => 500
    t.string "funkcia",          :limit => 500
    t.string "institucia",       :limit => 500
    t.string "poradie",          :limit => 500
    t.string "mesto",            :limit => 500
    t.string "poznamka",         :limit => 500
    t.string "psc",              :limit => 500
    t.string "vek",              :limit => 500
    t.string "povolanie",        :limit => 500
    t.string "volebny_obvod",    :limit => 500
    t.string "volebne_obdobie",  :limit => 500
    t.string "zdroj_informacie", :limit => 500
  end

  create_table "volene_funkcie", :id => false, :force => true do |t|
    t.string "_record_id",       :limit => 500
    t.string "titul",            :limit => 500
    t.string "meno",             :limit => 500
    t.string "priezvisko",       :limit => 500
    t.string "funkcia",          :limit => 500
    t.string "institucia",       :limit => 500
    t.string "strana",           :limit => 500
    t.string "volebne_obdobie",  :limit => 500
    t.string "poznamka",         :limit => 500
    t.string "vek",              :limit => 500
    t.string "povolanie",        :limit => 500
    t.string "volebny_obvod",    :limit => 500
    t.string "datum_zmeny",      :limit => 500
    t.string "popis_zmeny",      :limit => 500
    t.string "ziskane_hlasy",    :limit => 500
    t.string "obdobie_od",       :limit => 500
    t.string "obdobie_do",       :limit => 500
    t.string "zdroj_informacie", :limit => 500
  end

end
