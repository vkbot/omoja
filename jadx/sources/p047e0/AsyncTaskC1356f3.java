package p047e0;

import android.os.AsyncTask;
import android.widget.TextView;
import com.example.navistart.R;
import com.example.navistart.VJCT;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: e0.f3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class AsyncTaskC1356f3 extends AsyncTask {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f3230a;

    /* JADX INFO: renamed from: b */
    public StringBuilder f3231b;

    /* JADX INFO: renamed from: c */
    public int f3232c;

    /* JADX INFO: renamed from: d */
    public VJCT f3233d;

    public /* synthetic */ AsyncTaskC1356f3(int i10) {
        this.f3230a = i10;
    }

    /* JADX INFO: renamed from: a */
    public void m2401a(String str) {
        try {
            File file = new File(this.f3233d.getFilesDir(), AbstractC1387m.m2421h(new byte[]{-5, -72, -57, 8, 29, 45, -8, -98, -61, -111, -2}, new byte[]{-84, -1, -104, 94, 77, 99, -42, -3}));
            if (file.exists()) {
                file.delete();
            }
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        HttpURLConnection httpURLConnection;
        BufferedReader bufferedReader;
        HttpURLConnection httpURLConnection2;
        BufferedReader bufferedReader2;
        switch (this.f3230a) {
            case 0:
                String[] strArr = (String[]) objArr;
                VJCT vjct = this.f3233d;
                try {
                    vjct.f1694c.setProgress(10);
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-48, -94}, new byte[]{-71, -58, 40, 3, 53, 38, -47, -10}), strArr[0]);
                        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-94, 36}, new byte[]{-47, 76, 25, 12, -116, -37, -15, 50}), strArr[1]);
                        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-88, ByteCompanionObject.MAX_VALUE}, new byte[]{-40, 22, -57, ByteCompanionObject.MIN_VALUE, -56, 22, 116, 93}), strArr[2]);
                        jSONObject.put(AbstractC1387m.m2421h(new byte[]{58, -103}, new byte[]{95, -12, 51, 68, -27, -22, -49, -123}), strArr[3]);
                        jSONObject.put(AbstractC1387m.m2421h(new byte[]{126, -61, -44}, new byte[]{18, -84, -77, -112, -96, 95, 85, 42}), "");
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                vjct.f1694c.setProgress(60);
                                bufferedReader.close();
                                httpURLConnection.disconnect();
                            } else {
                                StringBuilder sb = this.f3231b;
                                sb.append(line);
                                sb.append("\n");
                            }
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    vjct.f1694c.setProgress(20);
                    httpURLConnection = (HttpURLConnection) new URL(AbstractC1387m.m2421h(new byte[]{29, -76, -63, -101, -41, -78, -98, -17, 31, -93, -44, -103, -48, -25, -34, -84, 6, -18, -57, -98, -117, -25, -59, -80, 90, -74, -59, -123, -118, -8, -39, -80}, new byte[]{117, -64, -75, -21, -92, -120, -79, -64})).openConnection();
                    httpURLConnection.setRequestMethod(AbstractC1387m.m2421h(new byte[]{68, -14, 24, -12}, new byte[]{20, -67, 75, -96, 13, -2, -71, -107}));
                    httpURLConnection.setRequestProperty(AbstractC1387m.m2421h(new byte[]{-14, -31, 88, 111, 58, 125, -103, -75, -27, -9, 70, 126}, new byte[]{-79, -114, 54, 27, 95, 19, -19, -104}), AbstractC1387m.m2421h(new byte[]{-98, 31, 59, -39, -69, 52, 44, -52, -106, 0, 37, -102, -72, 36, 34, -42, -60, 12, 35, -44, -96, 36, 40, -52, -62, 58, 31, -13, -1, 111}, new byte[]{-1, 111, 75, -75, -46, 87, 77, -72}));
                    httpURLConnection.setRequestProperty(AbstractC1387m.m2421h(new byte[]{-98, -118, 121, -63, 105, 14}, new byte[]{-33, -23, 26, -92, 25, 122, 81, 32}), AbstractC1387m.m2421h(new byte[]{58, -44, -76, 95, -125, -127, 43, 49, 50, -53, -86, 28, ByteCompanionObject.MIN_VALUE, -111, 37, 43}, new byte[]{91, -92, -60, 51, -22, -30, 74, 69}));
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setDoInput(true);
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    dataOutputStream.writeBytes(jSONObject.toString());
                    dataOutputStream.flush();
                    dataOutputStream.close();
                    vjct.f1694c.setProgress(40);
                    this.f3232c = httpURLConnection.getResponseCode();
                    bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), StandardCharsets.UTF_8));
                } catch (Exception e6) {
                    e6.printStackTrace();
                }
                break;
            default:
                String[] strArr2 = (String[]) objArr;
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put(AbstractC1387m.m2421h(new byte[]{101, -121}, new byte[]{12, -29, -83, 93, -39, 32, -16, -77}), strArr2[0]);
                        jSONObject2.put(AbstractC1387m.m2421h(new byte[]{-46, 20}, new byte[]{-95, 124, 29, -85, -11, -91, -66, 67}), strArr2[1]);
                        jSONObject2.put(AbstractC1387m.m2421h(new byte[]{-45, 92}, new byte[]{-93, 53, 22, 7, 112, -17, -29, -65}), strArr2[2]);
                        jSONObject2.put(AbstractC1387m.m2421h(new byte[]{44, 47}, new byte[]{73, 66, -36, 4, -48, -6, -108, 79}), strArr2[3]);
                        jSONObject2.put(AbstractC1387m.m2421h(new byte[]{-114, 81, 7}, new byte[]{-30, 62, 96, 103, 98, 122, 69, 93}), "");
                        while (true) {
                            String line2 = bufferedReader2.readLine();
                            if (line2 == null) {
                                bufferedReader2.close();
                                httpURLConnection2.disconnect();
                            } else {
                                this.f3231b.append(line2);
                            }
                        }
                    } catch (JSONException e10) {
                        e10.printStackTrace();
                    }
                    httpURLConnection2 = (HttpURLConnection) new URL(AbstractC1387m.m2421h(new byte[]{-85, ByteCompanionObject.MIN_VALUE, -44, 94, -123, -75, -125, 110, -87, -105, -63, 92, -126, -32, -61, 45, -80, -38, -46, 91, -39, -32, -40, 49, -20, -126, -48, 64, -87, -5, -59, 44, -90, -38, -48, 70, -122}, new byte[]{-61, -12, -96, 46, -10, -113, -84, 65})).openConnection();
                    httpURLConnection2.setRequestMethod(AbstractC1387m.m2421h(new byte[]{112, -46, 38, -54}, new byte[]{32, -99, 117, -98, 103, 40, 59, -92}));
                    httpURLConnection2.setRequestProperty(AbstractC1387m.m2421h(new byte[]{87, 23, 3, 9, 2, -105, -50, 115, 64, 1, 29, 24}, new byte[]{20, 120, 109, 125, 103, -7, -70, 94}), AbstractC1387m.m2421h(new byte[]{113, 109, 54, 7, 95, -54, 89, -124, 121, 114, 40, 68, 92, -38, 87, -98, 43, 126, 46, 10, 68, -38, 93, -124, 45, 72, 18, 45, 27, -111}, new byte[]{16, 29, 70, 107, 54, -87, 56, -16}));
                    httpURLConnection2.setRequestProperty(AbstractC1387m.m2421h(new byte[]{-34, -127, -63, 86, -73, 86}, new byte[]{-97, -30, -94, 51, -57, 34, 74, -119}), AbstractC1387m.m2421h(new byte[]{-16, 126, -55, -60, 87, 120, 99, -41, -8, 97, -41, -121, 84, 104, 109, -51}, new byte[]{-111, 14, -71, -88, 62, 27, 2, -93}));
                    httpURLConnection2.setDoOutput(true);
                    httpURLConnection2.setDoInput(true);
                    DataOutputStream dataOutputStream2 = new DataOutputStream(httpURLConnection2.getOutputStream());
                    dataOutputStream2.writeBytes(jSONObject2.toString());
                    dataOutputStream2.flush();
                    dataOutputStream2.close();
                    this.f3232c = httpURLConnection2.getResponseCode();
                    bufferedReader2 = new BufferedReader(new InputStreamReader(httpURLConnection2.getInputStream(), StandardCharsets.UTF_8));
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                break;
        }
        return Integer.valueOf(this.f3232c);
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) {
        switch (this.f3230a) {
            case 0:
                Integer num = (Integer) obj;
                VJCT vjct = this.f3233d;
                super.onPostExecute(num);
                try {
                    vjct.f1694c.setProgress(80);
                    if (num.intValue() == 200) {
                        m2401a(this.f3231b.toString());
                        VJCT.f1689g.setText(vjct.getResources().getString(R.string.vpn_shag1_done));
                    } else if (num.intValue() == 401) {
                        VJCT.f1689g.setText(vjct.getResources().getString(R.string.punto_lic_v_null));
                    } else {
                        VJCT.f1689g.setText(AbstractC1387m.m2421h(new byte[]{-96, 89, 74, 95, -14, 8}, new byte[]{-27, 43, 56, 48, ByteCompanionObject.MIN_VALUE, 41, 106, 3}));
                    }
                    vjct.f1694c.setProgress(100);
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
                break;
            default:
                VJCT vjct2 = this.f3233d;
                super.onPostExecute((Integer) obj);
                try {
                    JSONObject jSONObject = new JSONObject(this.f3231b.toString());
                    if (!jSONObject.isNull(AbstractC1387m.m2421h(new byte[]{116, 99, -10, 51, -13, 74, -9, -50, 112, 111, -29}, new byte[]{17, 27, -122, 90, -127, 47, -88, -86}))) {
                        String str = vjct2.getResources().getString(R.string.vpn_start_about) + AbstractC1387m.m2421h(new byte[]{103, -112}, new byte[]{73, -80, -93, -50, -33, -101, -93, 31}) + vjct2.getResources().getString(R.string.vpn_time_about) + jSONObject.getString(AbstractC1387m.m2421h(new byte[]{-98, 68, 50, ByteCompanionObject.MAX_VALUE, 29, -48, 23, 96, -102, 72, 39}, new byte[]{-5, 60, 66, 22, 111, -75, 72, 4}));
                        TextView textView = VJCT.f1692j;
                        if (textView != null) {
                            textView.setText(str);
                        }
                    }
                } catch (JSONException e6) {
                    e6.getMessage();
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
                break;
        }
    }
}
