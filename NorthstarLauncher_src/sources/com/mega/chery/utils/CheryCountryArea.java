package com.mega.chery.utils;

import android.content.Context;
import android.text.TextUtils;
import com.mega.ecu.MegaProperties;
import com.mega.nexus.os.MegaSystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class CheryCountryArea {
    public static final int CAR_SPEED_KM_H = 0;
    public static final String CURRENT_SALES_AREA = MegaSystemProperties.get(MegaProperties.CONFIG_COUNTRY_OR_REGION, "");
    public static final int ELECTRICITY_KM_KWH = 1;
    public static final int ELECTRICITY_KWH_100KM = 0;
    public static final int ELECTRICITY_KWH_KM = 3;
    public static final int ELECTRICITY_MILES_KWH = 4;
    public static final int ELECTRICITY_WH_KM = 2;
    public static final String KEY_AUSTRALIA = "17";
    public static final String KEY_BRAZIL = "4";
    public static final String KEY_CEN_ASIA = "5";
    public static final String KEY_CHILE = "1";
    public static final String KEY_CHINA = "0";
    public static final String KEY_ECUADOR = "11";
    public static final String KEY_EGYPT = "8";
    public static final String KEY_GULF = "6";
    public static final String KEY_INDONESIA = "2";
    public static final String KEY_ISRAEL = "19";
    public static final String KEY_ITALY = "9";
    public static final String KEY_KAZAKHSTAN = "16";
    public static final String KEY_MALAYSIA = "3";
    public static final String KEY_MEXICO = "12";
    public static final String KEY_PHILIPPINES = "13";
    public static final String KEY_RUSSIA = "7";
    public static final String KEY_SAUDI = "14";
    public static final String KEY_THAILAND = "15";
    public static final String KEY_TURKEY = "18";
    public static final String KEY_UKRAINE = "10";
    public static final String KEY_UNITED_ARAB_EMIRATES = "21";
    public static final String KEY_UNITED_ARGENTINA = "24";
    public static final String KEY_UNITED_AUSTRIA = "60";
    public static final String KEY_UNITED_AZERBAIJAN = "30";
    public static final String KEY_UNITED_BANGLADESH = "5o";
    public static final String KEY_UNITED_BELGIUM = "61";
    public static final String KEY_UNITED_BOLIVIA = "35";
    public static final String KEY_UNITED_BULGARIA = "76";
    public static final String KEY_UNITED_COLOMBIA = "28";
    public static final String KEY_UNITED_COSTA_RICA = "52";
    public static final String KEY_UNITED_CROATIA = "72";
    public static final String KEY_UNITED_CYPRUS = "70";
    public static final String KEY_UNITED_CZECH = "62";
    public static final String KEY_UNITED_DENMARK = "64";
    public static final String KEY_UNITED_ESTONIA = "78";
    public static final String KEY_UNITED_ETHIOPIA = "44";
    public static final String KEY_UNITED_FINLAND = "73";
    public static final String KEY_UNITED_FRANCE = "54";
    public static final String KEY_UNITED_GERMANY = "55";
    public static final String KEY_UNITED_GREECE = "77";
    public static final String KEY_UNITED_HOLAND = "56";
    public static final String KEY_UNITED_HUNGARY = "63";
    public static final String KEY_UNITED_INDIA = "40";
    public static final String KEY_UNITED_IRAQ = "23";
    public static final String KEY_UNITED_IRELAND = "75";
    public static final String KEY_UNITED_KINGDOM = "22";
    public static final String KEY_UNITED_LATVIA = "68";
    public static final String KEY_UNITED_LIBYA = "32";
    public static final String KEY_UNITED_LITHUANIA = "74";
    public static final String KEY_UNITED_LUXEMBURG = "65";
    public static final String KEY_UNITED_MALTA = "69";
    public static final String KEY_UNITED_MYANMAR = "42";
    public static final String KEY_UNITED_NEPAL = "49";
    public static final String KEY_UNITED_NEW_ZEALAND = "41";
    public static final String KEY_UNITED_NIGERIA = "33";
    public static final String KEY_UNITED_NORTH_AMERICA = "46";
    public static final String KEY_UNITED_NORWAY = "36";
    public static final String KEY_UNITED_PAKISTAN = "38";
    public static final String KEY_UNITED_PERU = "29";
    public static final String KEY_UNITED_POLAND = "59";
    public static final String KEY_UNITED_PORTUGAL = "57";
    public static final String KEY_UNITED_ROMANIA = "66";
    public static final String KEY_UNITED_SENEGAL = "31";
    public static final String KEY_UNITED_SERBIA = "43";
    public static final String KEY_UNITED_SLOVAKIA = "67";
    public static final String KEY_UNITED_SLOVENIA = "71";
    public static final String KEY_UNITED_SOUTH_AFRICA = "25";
    public static final String KEY_UNITED_SOUTH_ALGERIA = "26";
    public static final String KEY_UNITED_SPAIN = "51";
    public static final String KEY_UNITED_SUDAN = "39";
    public static final String KEY_UNITED_SWEDEN = "58";
    public static final String KEY_UNITED_SWITZERLAND = "79";
    public static final String KEY_UNITED_SYRIA = "34";
    public static final String KEY_UNITED_TUNISIA = "47";
    public static final String KEY_UNITED_URUGUAY = "27";
    public static final String KEY_UNITED_US = "37";
    public static final String KEY_UNITED_UZBEKISTAN = "48";
    public static final String KEY_UNITED_VENEZUELA = "53";
    public static final String KEY_VIETNAM = "45";
    public static final int TEMPERATURE_C = 0;
    public static final int TEMPERATURE_F = 1;
    public static final int TEMPERATURE_MILES_H = 1;
    public static final int TIRE_PRESSURE_BAR = 0;
    public static final int TIRE_PRESSURE_KPA = 1;
    public static final int TIRE_PRESSURE_PSI = 2;
    public static final int VALUE_LAN_ARAB = 3;
    public static final int VALUE_LAN_CHINA = 0;
    public static final int VALUE_LAN_DUTCH = 12;
    public static final int VALUE_LAN_FRENCH = 10;
    public static final int VALUE_LAN_GERMAN = 8;
    public static final int VALUE_LAN_INDONESIAN = 18;
    public static final int VALUE_LAN_ISRAEL = 16;
    public static final int VALUE_LAN_ITALIAN = 11;
    public static final int VALUE_LAN_KAZAKH = 19;
    public static final int VALUE_LAN_NORWAY = 15;
    public static final int VALUE_LAN_PERSIAN = 4;
    public static final int VALUE_LAN_POLISH = 13;
    public static final int VALUE_LAN_PORTUGUESE = 5;
    public static final int VALUE_LAN_RUSSIA = 2;
    public static final int VALUE_LAN_SPANISH = 7;
    public static final int VALUE_LAN_SWEDISH = 14;
    public static final int VALUE_LAN_THAI = 17;
    public static final int VALUE_LAN_TURKISH = 9;
    public static final int VALUE_LAN_UK = 1;
    public static final int VALUE_LAN_UKRAINIAN = 6;

    public static int getElectricityUnitDefault() {
        return 0;
    }

    public static int getTempUnitDefault() {
        return 0;
    }

    public static String getCherySalesArea() {
        String str = CURRENT_SALES_AREA;
        if (TextUtils.equals(str, CountryCode.CHINA)) {
            return KEY_CHINA;
        }
        if (TextUtils.equals(str, CountryCode.ENGLAND)) {
            return KEY_UNITED_KINGDOM;
        }
        if (TextUtils.equals(str, CountryCode.IRAQ)) {
            return KEY_UNITED_IRAQ;
        }
        if (TextUtils.equals(str, CountryCode.ARGENTINA)) {
            return KEY_UNITED_ARGENTINA;
        }
        if (TextUtils.equals(str, CountryCode.CHILE)) {
            return KEY_CHILE;
        }
        if (TextUtils.equals(str, CountryCode.INDONESIA)) {
            return "2";
        }
        if (TextUtils.equals(str, CountryCode.SOUTH_AFRICA)) {
            return KEY_UNITED_SOUTH_AFRICA;
        }
        if (TextUtils.equals(str, CountryCode.MALAYSIA)) {
            return "3";
        }
        if (TextUtils.equals(str, CountryCode.ALGERIA)) {
            return KEY_UNITED_SOUTH_ALGERIA;
        }
        if (TextUtils.equals(str, CountryCode.BRAZIL)) {
            return KEY_BRAZIL;
        }
        if (TextUtils.equals(str, CountryCode.CENTRAL_ASIA)) {
            return KEY_CEN_ASIA;
        }
        if (TextUtils.equals(str, CountryCode.URUGUAY)) {
            return KEY_UNITED_URUGUAY;
        }
        if (TextUtils.equals(str, CountryCode.COLOMBIA)) {
            return KEY_UNITED_COLOMBIA;
        }
        if (TextUtils.equals(str, CountryCode.PERU)) {
            return KEY_UNITED_PERU;
        }
        if (TextUtils.equals(str, CountryCode.GULF)) {
            return KEY_GULF;
        }
        if (TextUtils.equals(str, CountryCode.RUSSIA)) {
            return KEY_RUSSIA;
        }
        if (TextUtils.equals(str, CountryCode.EGYPT)) {
            return KEY_EGYPT;
        }
        if (TextUtils.equals(str, CountryCode.ITALY)) {
            return KEY_ITALY;
        }
        if (TextUtils.equals(str, CountryCode.AZERBAIJAN)) {
            return KEY_UNITED_AZERBAIJAN;
        }
        if (TextUtils.equals(str, CountryCode.UKRAINE)) {
            return KEY_UKRAINE;
        }
        if (TextUtils.equals(str, CountryCode.ECUADOR)) {
            return KEY_ECUADOR;
        }
        if (TextUtils.equals(str, CountryCode.MEXICO)) {
            return KEY_MEXICO;
        }
        if (TextUtils.equals(str, CountryCode.SENEGAL)) {
            return KEY_UNITED_SENEGAL;
        }
        if (TextUtils.equals(str, CountryCode.LIBYA)) {
            return KEY_UNITED_LIBYA;
        }
        if (TextUtils.equals(str, CountryCode.NIGERIA)) {
            return KEY_UNITED_NIGERIA;
        }
        if (TextUtils.equals(str, CountryCode.SYRIA)) {
            return KEY_UNITED_SYRIA;
        }
        if (TextUtils.equals(str, CountryCode.BOLIVIA)) {
            return KEY_UNITED_BOLIVIA;
        }
        if (TextUtils.equals(str, CountryCode.NORWAY)) {
            return KEY_UNITED_NORWAY;
        }
        if (TextUtils.equals(str, CountryCode.PHILIPPINES)) {
            return KEY_PHILIPPINES;
        }
        if (TextUtils.equals(str, CountryCode.SAUDI)) {
            return KEY_SAUDI;
        }
        if (TextUtils.equals(str, CountryCode.USA)) {
            return KEY_UNITED_US;
        }
        if (TextUtils.equals(str, CountryCode.PAKISTAN)) {
            return KEY_UNITED_PAKISTAN;
        }
        if (TextUtils.equals(str, CountryCode.THAILAND)) {
            return KEY_THAILAND;
        }
        if (TextUtils.equals(str, CountryCode.SUDAN)) {
            return KEY_UNITED_SUDAN;
        }
        if (TextUtils.equals(str, CountryCode.KAZAKHSTAN)) {
            return KEY_KAZAKHSTAN;
        }
        if (TextUtils.equals(str, CountryCode.INDIA)) {
            return KEY_UNITED_INDIA;
        }
        if (TextUtils.equals(str, CountryCode.NEW_ZEALAND)) {
            return KEY_UNITED_NEW_ZEALAND;
        }
        if (TextUtils.equals(str, CountryCode.AUSTRALIA)) {
            return KEY_AUSTRALIA;
        }
        if (TextUtils.equals(str, CountryCode.MYANMAR)) {
            return "42";
        }
        if (TextUtils.equals(str, CountryCode.TURKEY)) {
            return KEY_TURKEY;
        }
        if (TextUtils.equals(str, CountryCode.ISRAEL)) {
            return KEY_ISRAEL;
        }
        if (TextUtils.equals(str, CountryCode.SERBIA)) {
            return KEY_UNITED_SERBIA;
        }
        if (TextUtils.equals(str, CountryCode.ETHIOPIA)) {
            return KEY_UNITED_ETHIOPIA;
        }
        if (TextUtils.equals(str, CountryCode.VIETNAM)) {
            return KEY_VIETNAM;
        }
        if (TextUtils.equals(str, CountryCode.NORTH_AMERICA)) {
            return KEY_UNITED_NORTH_AMERICA;
        }
        if (TextUtils.equals(str, CountryCode.TUNISIA)) {
            return KEY_UNITED_TUNISIA;
        }
        if (TextUtils.equals(str, CountryCode.UZBEKISTAN)) {
            return KEY_UNITED_UZBEKISTAN;
        }
        if (TextUtils.equals(str, CountryCode.NEPAL)) {
            return KEY_UNITED_NEPAL;
        }
        if (TextUtils.equals(str, CountryCode.BANGLADESH)) {
            return KEY_UNITED_BANGLADESH;
        }
        if (TextUtils.equals(str, CountryCode.UNITED_ARAB_EMIRATES)) {
            return KEY_UNITED_ARAB_EMIRATES;
        }
        if (TextUtils.equals(str, CountryCode.SPAIN)) {
            return KEY_UNITED_SPAIN;
        }
        if (TextUtils.equals(str, CountryCode.COSTA_RICA)) {
            return KEY_UNITED_COSTA_RICA;
        }
        if (TextUtils.equals(str, CountryCode.VENEZUELA)) {
            return KEY_UNITED_VENEZUELA;
        }
        if (TextUtils.equals(str, CountryCode.GERMANY)) {
            return KEY_UNITED_GERMANY;
        }
        if (TextUtils.equals(str, CountryCode.POLAND)) {
            return KEY_UNITED_POLAND;
        }
        return TextUtils.equals(str, CountryCode.FRANCE) ? KEY_UNITED_FRANCE : "";
    }

    public static int getTireUnitDefault() {
        String cherySalesArea = getCherySalesArea();
        if (TextUtils.equals(cherySalesArea, KEY_CHINA) || TextUtils.equals(cherySalesArea, KEY_CHILE) || TextUtils.equals(cherySalesArea, "2") || TextUtils.equals(cherySalesArea, "3") || TextUtils.equals(cherySalesArea, KEY_GULF) || TextUtils.equals(cherySalesArea, KEY_EGYPT) || TextUtils.equals(cherySalesArea, KEY_ECUADOR) || TextUtils.equals(cherySalesArea, KEY_MEXICO) || TextUtils.equals(cherySalesArea, KEY_PHILIPPINES) || TextUtils.equals(cherySalesArea, KEY_SAUDI) || TextUtils.equals(cherySalesArea, KEY_THAILAND) || TextUtils.equals(cherySalesArea, KEY_AUSTRALIA) || TextUtils.equals(cherySalesArea, KEY_UNITED_ARAB_EMIRATES) || TextUtils.equals(cherySalesArea, KEY_TURKEY) || TextUtils.equals(cherySalesArea, KEY_ISRAEL) || TextUtils.equals(cherySalesArea, KEY_UNITED_SERBIA) || TextUtils.equals(cherySalesArea, KEY_UNITED_KINGDOM) || TextUtils.equals(cherySalesArea, KEY_BRAZIL)) {
            return 2;
        }
        if (TextUtils.equals(cherySalesArea, KEY_RUSSIA) || TextUtils.equals(cherySalesArea, KEY_UKRAINE) || TextUtils.equals(cherySalesArea, KEY_KAZAKHSTAN) || TextUtils.equals(cherySalesArea, KEY_CEN_ASIA)) {
            return 0;
        }
        TextUtils.equals(cherySalesArea, KEY_ITALY);
        return 0;
    }

    public static int getSpeedUnitDefault() {
        String cherySalesArea = getCherySalesArea();
        return (TextUtils.equals(cherySalesArea, KEY_CHILE) || TextUtils.equals(cherySalesArea, KEY_BRAZIL) || TextUtils.equals(cherySalesArea, KEY_CEN_ASIA) || TextUtils.equals(cherySalesArea, KEY_GULF) || TextUtils.equals(cherySalesArea, KEY_RUSSIA) || TextUtils.equals(cherySalesArea, KEY_EGYPT) || TextUtils.equals(cherySalesArea, KEY_ITALY) || TextUtils.equals(cherySalesArea, KEY_UKRAINE) || TextUtils.equals(cherySalesArea, KEY_ECUADOR) || TextUtils.equals(cherySalesArea, KEY_MEXICO) || TextUtils.equals(cherySalesArea, KEY_PHILIPPINES) || TextUtils.equals(cherySalesArea, KEY_SAUDI) || TextUtils.equals(cherySalesArea, KEY_TURKEY) || TextUtils.equals(cherySalesArea, KEY_ISRAEL) || TextUtils.equals(cherySalesArea, KEY_UNITED_SERBIA) || TextUtils.equals(cherySalesArea, KEY_UNITED_ARAB_EMIRATES) || TextUtils.equals(cherySalesArea, KEY_KAZAKHSTAN) || TextUtils.equals(cherySalesArea, KEY_CHINA) || TextUtils.equals(cherySalesArea, "2") || TextUtils.equals(cherySalesArea, "3") || TextUtils.equals(cherySalesArea, KEY_THAILAND) || TextUtils.equals(cherySalesArea, KEY_AUSTRALIA) || !TextUtils.equals(cherySalesArea, KEY_UNITED_KINGDOM)) ? 0 : 1;
    }

    public static int getLanguageTypeDefault() {
        String cherySalesArea = getCherySalesArea();
        if (TextUtils.equals(cherySalesArea, KEY_CHILE) || TextUtils.equals(cherySalesArea, KEY_ECUADOR) || TextUtils.equals(cherySalesArea, KEY_MEXICO)) {
            return 7;
        }
        if (TextUtils.equals(cherySalesArea, "2")) {
            return 18;
        }
        if (TextUtils.equals(cherySalesArea, "3") || TextUtils.equals(cherySalesArea, KEY_ITALY) || TextUtils.equals(cherySalesArea, KEY_PHILIPPINES) || TextUtils.equals(cherySalesArea, KEY_AUSTRALIA) || TextUtils.equals(cherySalesArea, KEY_TURKEY) || TextUtils.equals(cherySalesArea, KEY_ISRAEL) || TextUtils.equals(cherySalesArea, KEY_UNITED_SERBIA) || TextUtils.equals(cherySalesArea, KEY_UNITED_KINGDOM)) {
            return 1;
        }
        if (TextUtils.equals(cherySalesArea, KEY_BRAZIL)) {
            return 5;
        }
        if (TextUtils.equals(cherySalesArea, KEY_CEN_ASIA)) {
            return 4;
        }
        if (TextUtils.equals(cherySalesArea, KEY_GULF) || TextUtils.equals(cherySalesArea, KEY_EGYPT) || TextUtils.equals(cherySalesArea, KEY_SAUDI) || TextUtils.equals(cherySalesArea, KEY_UNITED_ARAB_EMIRATES)) {
            return 3;
        }
        if (TextUtils.equals(cherySalesArea, KEY_RUSSIA)) {
            return 2;
        }
        if (TextUtils.equals(cherySalesArea, KEY_KAZAKHSTAN)) {
            return 19;
        }
        if (TextUtils.equals(cherySalesArea, KEY_UKRAINE)) {
            return 6;
        }
        return TextUtils.equals(cherySalesArea, KEY_THAILAND) ? 17 : 0;
    }

    public static class SegmentEntity {
        private final int mDefaultValue;
        private final AreaEntry[] mEntries;

        public int getDefaultValue() {
            return this.mDefaultValue;
        }

        public AreaEntry[] getEntries() {
            return this.mEntries;
        }

        public SegmentEntity(AreaEntry[] areaEntryArr, int i) {
            this.mEntries = areaEntryArr;
            this.mDefaultValue = i;
        }
    }

    public static class AreaEntry {
        private final String mUnit;
        private final String mUnitContentDescription;
        private final int mUnitValue;

        public String getUnit() {
            return this.mUnit;
        }

        public String getUnitContentDescription() {
            return this.mUnitContentDescription;
        }

        public int getUnitValue() {
            return this.mUnitValue;
        }

        public AreaEntry(String str, int i, String str2) {
            this.mUnit = str;
            this.mUnitValue = i;
            this.mUnitContentDescription = str2;
        }

        public static AreaEntry getInstance(Context context, int i, int i2, int i3) {
            return new AreaEntry(context.getString(i), i2, context.getString(i3));
        }
    }
}
