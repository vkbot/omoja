package com.android.server.firewall;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public abstract class FilterFactory {
    private final String mTag;

    public abstract Filter newFilter(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException;

    protected FilterFactory(String tag) {
        if (tag == null) {
            throw null;
        }
        this.mTag = tag;
    }

    public String getTagName() {
        return this.mTag;
    }
}
