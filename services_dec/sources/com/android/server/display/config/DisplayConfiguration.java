package com.android.server.display.config;

import java.io.IOException;
import javax.xml.datatype.DatatypeConfigurationException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class DisplayConfiguration {
    private NitsMap screenBrightnessMap;

    public final NitsMap getScreenBrightnessMap() {
        return this.screenBrightnessMap;
    }

    public final void setScreenBrightnessMap(NitsMap screenBrightnessMap) {
        this.screenBrightnessMap = screenBrightnessMap;
    }

    static DisplayConfiguration read(XmlPullParser parser) throws XmlPullParserException, DatatypeConfigurationException, IOException {
        int type;
        DisplayConfiguration instance = new DisplayConfiguration();
        parser.getDepth();
        while (true) {
            type = parser.next();
            if (type == 1 || type == 3) {
                break;
            }
            if (parser.getEventType() == 2) {
                String tagName = parser.getName();
                if (tagName.equals("screenBrightnessMap")) {
                    NitsMap value = NitsMap.read(parser);
                    instance.setScreenBrightnessMap(value);
                } else {
                    XmlParser.skip(parser);
                }
            }
        }
        if (type != 3) {
            throw new DatatypeConfigurationException("DisplayConfiguration is not closed");
        }
        return instance;
    }
}
