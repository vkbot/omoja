package com.android.server.display;

import android.os.Environment;
import android.util.Slog;
import com.android.server.display.config.DisplayConfiguration;
import com.android.server.display.config.NitsMap;
import com.android.server.display.config.Point;
import com.android.server.display.config.XmlParser;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import javax.xml.datatype.DatatypeConfigurationException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class DisplayDeviceConfig {
    private static final String CONFIG_FILE_FORMAT = "display_%d.xml";
    private static final String DISPLAY_CONFIG_DIR = "displayconfig";
    private static final String ETC_DIR = "etc";
    public static final float HIGH_BRIGHTNESS_MODE_UNSUPPORTED = Float.NaN;
    private static final String TAG = "DisplayDeviceConfig";
    private float[] mBrightness;
    private float[] mNits;

    private DisplayDeviceConfig() {
    }

    public static DisplayDeviceConfig create(long physicalDisplayId) {
        DisplayDeviceConfig config = new DisplayDeviceConfig();
        String filename = String.format(CONFIG_FILE_FORMAT, Long.valueOf(physicalDisplayId));
        config.initFromFile(Environment.buildPath(Environment.getProductDirectory(), new String[]{ETC_DIR, DISPLAY_CONFIG_DIR, filename}));
        return config;
    }

    public float[] getNits() {
        return this.mNits;
    }

    public float[] getBrightness() {
        return this.mBrightness;
    }

    private void initFromFile(File configFile) {
        if (!configFile.exists()) {
            return;
        }
        if (!configFile.isFile()) {
            Slog.e(TAG, "Display configuration is not a file: " + configFile + ", skipping");
            return;
        }
        try {
            InputStream in = new BufferedInputStream(new FileInputStream(configFile));
            try {
                DisplayConfiguration config = XmlParser.read(in);
                loadBrightnessMap(config);
                in.close();
            } catch (Throwable th) {
                try {
                    in.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | DatatypeConfigurationException | XmlPullParserException e) {
            Slog.e(TAG, "Encountered an error while reading/parsing display config file: " + configFile, e);
        }
    }

    private void loadBrightnessMap(DisplayConfiguration config) {
        NitsMap map = config.getScreenBrightnessMap();
        List<Point> points = map.getPoint();
        int size = points.size();
        float[] nits = new float[size];
        float[] backlight = new float[size];
        int i = 0;
        for (Point point : points) {
            nits[i] = point.getNits().floatValue();
            backlight[i] = point.getValue().floatValue();
            if (i > 0) {
                if (nits[i] < nits[i - 1]) {
                    Slog.e(TAG, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Nits: " + nits[i] + " < " + nits[i - 1]);
                    return;
                }
                if (backlight[i] < backlight[i - 1]) {
                    Slog.e(TAG, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Value: " + backlight[i] + " < " + backlight[i - 1]);
                    return;
                }
            }
            i++;
        }
        this.mNits = nits;
        this.mBrightness = backlight;
    }
}
