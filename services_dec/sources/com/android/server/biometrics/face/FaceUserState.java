package com.android.server.biometrics.face;

import android.R;
import android.content.Context;
import android.hardware.biometrics.BiometricAuthenticator;
import android.hardware.face.Face;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.Xml;
import com.android.server.biometrics.BiometricUserState;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class FaceUserState extends BiometricUserState {
    private static final String ATTR_DEVICE_ID = "deviceId";
    private static final String ATTR_FACE_ID = "faceId";
    private static final String ATTR_NAME = "name";
    private static final String FACE_FILE = "settings_face.xml";
    private static final String TAG = "FaceState";
    private static final String TAG_FACE = "face";
    private static final String TAG_FACES = "faces";

    public FaceUserState(Context ctx, int userId) {
        super(ctx, userId);
    }

    @Override // com.android.server.biometrics.BiometricUserState
    protected String getBiometricsTag() {
        return TAG_FACES;
    }

    @Override // com.android.server.biometrics.BiometricUserState
    protected String getBiometricFile() {
        return FACE_FILE;
    }

    @Override // com.android.server.biometrics.BiometricUserState
    protected int getNameTemplateResource() {
        return R.string.duration_days_medium_past;
    }

    @Override // com.android.server.biometrics.BiometricUserState
    public void addBiometric(BiometricAuthenticator.Identifier identifier) {
        if (identifier instanceof Face) {
            super.addBiometric(identifier);
        } else {
            Slog.w(TAG, "Attempted to add non-face identifier");
        }
    }

    @Override // com.android.server.biometrics.BiometricUserState
    protected ArrayList getCopy(ArrayList array) {
        ArrayList<Face> result = new ArrayList<>(array.size());
        for (int i = 0; i < array.size(); i++) {
            Face f = (Face) array.get(i);
            result.add(new Face(f.getName(), f.getBiometricId(), f.getDeviceId()));
        }
        return result;
    }

    @Override // com.android.server.biometrics.BiometricUserState
    protected void doWriteState() {
        ArrayList<Face> faces;
        AtomicFile destination = new AtomicFile(this.mFile);
        synchronized (this) {
            faces = getCopy(this.mBiometrics);
        }
        FileOutputStream out = null;
        try {
            out = destination.startWrite();
            XmlSerializer serializer = Xml.newSerializer();
            serializer.setOutput(out, "utf-8");
            serializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
            serializer.startDocument(null, true);
            serializer.startTag(null, TAG_FACES);
            int count = faces.size();
            for (int i = 0; i < count; i++) {
                Face f = faces.get(i);
                serializer.startTag(null, TAG_FACE);
                serializer.attribute(null, ATTR_FACE_ID, Integer.toString(f.getBiometricId()));
                serializer.attribute(null, "name", f.getName().toString());
                serializer.attribute(null, ATTR_DEVICE_ID, Long.toString(f.getDeviceId()));
                serializer.endTag(null, TAG_FACE);
            }
            serializer.endTag(null, TAG_FACES);
            serializer.endDocument();
            destination.finishWrite(out);
            IoUtils.closeQuietly(out);
        } catch (Throwable t) {
            try {
                Slog.wtf(TAG, "Failed to write settings, restoring backup", t);
                destination.failWrite(out);
                throw new IllegalStateException("Failed to write faces", t);
            } catch (Throwable t2) {
                IoUtils.closeQuietly(out);
                throw t2;
            }
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.android.server.biometrics.BiometricUserState
    protected void parseBiometricsLocked(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next != 1) {
                if (next != 3 || xmlPullParser.getDepth() > depth) {
                    if (next != 3 && next != 4 && xmlPullParser.getName().equals(TAG_FACE)) {
                        this.mBiometrics.add((T) new Face(xmlPullParser.getAttributeValue(null, "name"), Integer.parseInt(xmlPullParser.getAttributeValue(null, ATTR_FACE_ID)), Integer.parseInt(xmlPullParser.getAttributeValue(null, ATTR_DEVICE_ID))));
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }
}
