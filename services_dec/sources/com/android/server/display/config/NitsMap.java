package com.android.server.display.config;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.xml.datatype.DatatypeConfigurationException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class NitsMap {
    private List<Point> point;

    public final List<Point> getPoint() {
        if (this.point == null) {
            this.point = new ArrayList();
        }
        return this.point;
    }

    static NitsMap read(XmlPullParser parser) throws XmlPullParserException, DatatypeConfigurationException, IOException {
        int type;
        NitsMap instance = new NitsMap();
        parser.getDepth();
        while (true) {
            type = parser.next();
            if (type == 1 || type == 3) {
                break;
            }
            if (parser.getEventType() == 2) {
                String tagName = parser.getName();
                if (tagName.equals("point")) {
                    Point value = Point.read(parser);
                    instance.getPoint().add(value);
                } else {
                    XmlParser.skip(parser);
                }
            }
        }
        if (type != 3) {
            throw new DatatypeConfigurationException("NitsMap is not closed");
        }
        return instance;
    }
}
