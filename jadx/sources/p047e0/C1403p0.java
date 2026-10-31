package p047e0;

import android.widget.RadioGroup;
import com.example.navistart.MainActivity;
import com.example.navistart.R;
import com.example.navistart.cores.HFunEnum;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONObject;
import p078h0.C1652b;

/* JADX INFO: renamed from: e0.p0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1403p0 implements RadioGroup.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f3365a;

    public /* synthetic */ C1403p0(MainActivity mainActivity, int i10) {
        this.f3365a = i10;
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public final void onCheckedChanged(RadioGroup radioGroup, int i10) {
        HFunEnum hFunEnum;
        HFunEnum hFunEnum2;
        int i11 = 2;
        switch (this.f3365a) {
            case 0:
                String str = MainActivity.f1288e1;
                if (i10 == R.id.rb_phev_drive_mode_not_set) {
                    i11 = 0;
                } else if (i10 == R.id.rb_phev_drive_mode_eco) {
                    i11 = 1;
                } else if (i10 != R.id.rb_phev_drive_mode_normal) {
                    i11 = i10 == R.id.rb_phev_drive_mode_sport ? 3 : -1;
                }
                if (i11 >= 0) {
                    C1652b.m2745o().saveInt(AbstractC1387m.m2421h(new byte[]{96, -85, 11, -15, -4, Base64.padSymbol, 21, -57, 96, -68, Base64.padSymbol, -12, -4, 14, 29, -53, 112, -80, 13, -23}, new byte[]{4, -39, 98, -121, -103, 98, 120, -88}), i11);
                    if (i11 > 0) {
                        int i12 = i11 - 1;
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put(AbstractC1387m.m2421h(new byte[]{26, 114, 36}, new byte[]{121, 31, 64, 41, -18, 111, -25, -11}), AbstractC1387m.m2421h(new byte[]{39, 95, 22, 71, 81, -110, 16, -127, 49, 101, 15, 119, 81, -123}, new byte[]{84, 58, 98, 24, 53, -32, 121, -9}));
                            jSONObject.put(AbstractC1387m.m2421h(new byte[]{9, -120, -83, 79, 69}, new byte[]{ByteCompanionObject.MAX_VALUE, -23, -63, 58, 32, 81, -2, 13}), i12);
                            C1652b.m2734a();
                            C1652b.m2736d().m1618c(jSONObject);
                        } catch (Throwable unused) {
                            return;
                        }
                    }
                }
                break;
            case 1:
                String str2 = MainActivity.f1288e1;
                if (i10 == R.id.rb_jaecoo_power_mode_not_set) {
                    i11 = 0;
                } else if (i10 == R.id.rb_jaecoo_power_mode_ev) {
                    i11 = 1;
                } else if (i10 != R.id.rb_jaecoo_power_mode_hev) {
                    i11 = -1;
                }
                if (i11 >= 0) {
                    C1652b.m2745o().saveInt(AbstractC1387m.m2421h(new byte[]{-107, -65, -25, -9, -53, 110, -42, 115, -112, -87, -25, -26, -5, 108, -26, 103, -102}, new byte[]{-1, -34, -126, -108, -92, 1, -119, 3}), i11);
                    if (i11 > 0) {
                        try {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put(AbstractC1387m.m2421h(new byte[]{106, 57, -6}, new byte[]{9, 84, -98, 85, 85, 1, 98, 94}), AbstractC1387m.m2421h(new byte[]{57, 105, -48, -104, -31, 43, 19, 11, 56, 83, -55, -88, -11, 33}, new byte[]{74, 12, -92, -57, -111, 68, 100, 110}));
                            jSONObject2.put(AbstractC1387m.m2421h(new byte[]{29, -125, -46, 3, 92}, new byte[]{107, -30, -66, 118, 57, 59, -104, -65}), i11);
                            C1652b.m2734a();
                            C1652b.m2736d().m1618c(jSONObject2);
                        } catch (Throwable unused2) {
                            return;
                        }
                    }
                }
                break;
            case 2:
                String str3 = MainActivity.f1288e1;
                if (i10 == R.id.rb_jaecoo_energy_recycle_not_set) {
                    i11 = 0;
                } else if (i10 == R.id.rb_jaecoo_energy_recycle_low) {
                    i11 = 1;
                } else if (i10 != R.id.rb_jaecoo_energy_recycle_medium) {
                    i11 = i10 == R.id.rb_jaecoo_energy_recycle_high ? 3 : -1;
                }
                if (i11 >= 0) {
                    C1652b.m2745o().saveInt(AbstractC1387m.m2421h(new byte[]{-120, -110, -61, -122, 126, -20, -74, -109, -116, -106, -44, -126, 104, -36, -101, -109, -127, -118, -59, -119, 116, -36, -123, -109, -108, -106, -54}, new byte[]{-30, -13, -90, -27, 17, -125, -23, -10}), i11);
                    if (i11 > 0) {
                        if (i10 == R.id.rb_jaecoo_energy_recycle_low) {
                            hFunEnum = HFunEnum.ID_ENERGY_RECYCLE_LOW;
                        } else if (i10 == R.id.rb_jaecoo_energy_recycle_medium) {
                            hFunEnum = HFunEnum.ID_ENERGY_RECYCLE_MEDIUM;
                        } else {
                            hFunEnum = i10 == R.id.rb_jaecoo_energy_recycle_high ? HFunEnum.ID_ENERGY_RECYCLE_HIGH : null;
                        }
                        if (hFunEnum != null) {
                            try {
                                C1652b.m2734a();
                                C1652b.m2736d().hybrid(hFunEnum, true);
                            } catch (Throwable unused3) {
                                return;
                            }
                            break;
                        }
                    }
                }
                break;
            default:
                String str4 = MainActivity.f1288e1;
                if (i10 == R.id.rb_jaecoo_battery_not_set) {
                    i11 = 0;
                } else if (i10 == R.id.rb_jaecoo_battery_initial) {
                    i11 = 1;
                } else if (i10 != R.id.rb_jaecoo_battery_smart) {
                    i11 = i10 == R.id.rb_jaecoo_battery_forced ? 4 : -1;
                }
                if (i11 >= 0) {
                    C1652b.m2745o().saveInt(AbstractC1387m.m2421h(new byte[]{-26, -77, 46, -111, -26, -3, 126, -124, -19, -90, 63, -105, -5, -21, 126, -106, -2, -67, 63, -105, -22, -26, 72, -119, -30, -115, 38, -99, -19, -9}, new byte[]{-116, -46, 75, -14, -119, -110, 33, -26}), i11);
                    if (i11 > 0) {
                        if (i10 == R.id.rb_jaecoo_battery_initial) {
                            hFunEnum2 = HFunEnum.ID_SOC_MANAGER_INITIAL;
                        } else if (i10 == R.id.rb_jaecoo_battery_smart) {
                            hFunEnum2 = HFunEnum.ID_SOC_MANAGER_SMART;
                        } else {
                            hFunEnum2 = i10 == R.id.rb_jaecoo_battery_forced ? HFunEnum.ID_SOC_MANAGER_FORCED : null;
                        }
                        if (hFunEnum2 != null) {
                            try {
                                C1652b.m2734a();
                                C1652b.m2736d().hybrid(hFunEnum2, true);
                            } catch (Throwable unused4) {
                                return;
                            }
                            break;
                        }
                    }
                }
                break;
        }
    }
}
