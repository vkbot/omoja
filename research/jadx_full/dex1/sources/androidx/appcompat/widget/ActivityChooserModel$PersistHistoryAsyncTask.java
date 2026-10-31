package androidx.appcompat.widget;

import android.os.AsyncTask;
import android.util.Log;
import android.util.Xml;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ActivityChooserModel$PersistHistoryAsyncTask extends AsyncTask<Object, Void, Void> {
    final /* synthetic */ ActivityChooserModel this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActivityChooserModel$PersistHistoryAsyncTask(ActivityChooserModel activityChooserModel) {
        this.this$0 = activityChooserModel;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:44:0x0076 A[DONT_GENERATE, EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
    public Void doInBackground2(Object... objArr) {
        List list = (List) objArr[0];
        String str = (String) objArr[1];
        try {
            FileOutputStream fileOutputStreamOpenFileOutput = this.this$0.mContext.openFileOutput(str, 0);
            XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
            try {
                xmlSerializerNewSerializer.setOutput(fileOutputStreamOpenFileOutput, null);
                xmlSerializerNewSerializer.startDocument("UTF-8", Boolean.TRUE);
                xmlSerializerNewSerializer.startTag(null, "historical-records");
                int size = list.size();
                for (int i9 = 0; i9 < size; i9++) {
                    ActivityChooserModel$HistoricalRecord activityChooserModel$HistoricalRecord = (ActivityChooserModel$HistoricalRecord) list.remove(0);
                    xmlSerializerNewSerializer.startTag(null, "historical-record");
                    xmlSerializerNewSerializer.attribute(null, "activity", activityChooserModel$HistoricalRecord.activity.flattenToString());
                    xmlSerializerNewSerializer.attribute(null, "time", String.valueOf(activityChooserModel$HistoricalRecord.time));
                    xmlSerializerNewSerializer.attribute(null, "weight", String.valueOf(activityChooserModel$HistoricalRecord.weight));
                    xmlSerializerNewSerializer.endTag(null, "historical-record");
                }
                xmlSerializerNewSerializer.endTag(null, "historical-records");
                xmlSerializerNewSerializer.endDocument();
            } catch (IOException e) {
                Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + this.this$0.mHistoryFileName, e);
            } catch (IllegalStateException e6) {
                Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + this.this$0.mHistoryFileName, e6);
            } catch (IllegalArgumentException e9) {
                Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + this.this$0.mHistoryFileName, e9);
            } finally {
                this.this$0.mCanReadHistoricalData = true;
                if (fileOutputStreamOpenFileOutput != null) {
                    try {
                        fileOutputStreamOpenFileOutput.close();
                    } catch (IOException unused) {
                    }
                }
            }
            return null;
        } catch (FileNotFoundException e10) {
            Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + str, e10);
            return null;
        }
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ Void doInBackground(Object[] objArr) {
        return doInBackground2(objArr);
    }
}
