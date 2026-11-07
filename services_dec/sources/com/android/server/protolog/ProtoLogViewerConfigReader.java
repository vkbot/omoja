package com.android.server.protolog;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.zip.GZIPInputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ProtoLogViewerConfigReader {
    private Map<Integer, String> mLogMessageMap = null;

    public synchronized String getViewerString(int messageHash) {
        if (this.mLogMessageMap != null) {
            return this.mLogMessageMap.get(Integer.valueOf(messageHash));
        }
        return null;
    }

    public synchronized void loadViewerConfig(PrintWriter pw, String viewerConfigFilename) {
        if (this.mLogMessageMap != null) {
            return;
        }
        try {
            try {
                InputStreamReader config = new InputStreamReader(new GZIPInputStream(new FileInputStream(viewerConfigFilename)));
                BufferedReader reader = new BufferedReader(config);
                StringBuilder builder = new StringBuilder();
                while (true) {
                    String line = reader.readLine();
                    if (line == null) {
                        break;
                    }
                    builder.append(line);
                    builder.append('\n');
                }
                reader.close();
                JSONObject json = new JSONObject(builder.toString());
                JSONObject messages = json.getJSONObject("messages");
                this.mLogMessageMap = new TreeMap();
                Iterator<String> itKeys = messages.keys();
                while (itKeys.hasNext()) {
                    String key = itKeys.next();
                    try {
                        int hash = Integer.parseInt(key);
                        JSONObject val = messages.getJSONObject(key);
                        String msg = val.getString("message");
                        this.mLogMessageMap.put(Integer.valueOf(hash), msg);
                    } catch (NumberFormatException e) {
                    }
                }
                ProtoLogImpl.logAndPrintln(pw, "Loaded " + this.mLogMessageMap.size() + " log definitions from " + viewerConfigFilename);
            } catch (JSONException e2) {
                ProtoLogImpl.logAndPrintln(pw, "Unable to load log definitions: JSON parsing exception while reading " + viewerConfigFilename + ". " + e2);
            }
        } catch (FileNotFoundException e3) {
            ProtoLogImpl.logAndPrintln(pw, "Unable to load log definitions: File " + viewerConfigFilename + " not found." + e3);
        } catch (IOException e4) {
            ProtoLogImpl.logAndPrintln(pw, "Unable to load log definitions: IOException while reading " + viewerConfigFilename + ". " + e4);
        }
    }

    public synchronized int knownViewerStringsNumber() {
        if (this.mLogMessageMap != null) {
            return this.mLogMessageMap.size();
        }
        return 0;
    }
}
