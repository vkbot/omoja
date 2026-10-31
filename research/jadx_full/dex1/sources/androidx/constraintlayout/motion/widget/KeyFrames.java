package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.Log;
import android.util.Xml;
import androidx.constraintlayout.core.motion.utils.TypedValues$CycleType;
import androidx.constraintlayout.core.motion.utils.TypedValues$PositionType;
import androidx.constraintlayout.core.motion.utils.TypedValues$TriggerType;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class KeyFrames {
    private static final String CUSTOM_ATTRIBUTE = "CustomAttribute";
    private static final String CUSTOM_METHOD = "CustomMethod";
    private static final String TAG = "KeyFrames";
    public static final int UNSET = -1;
    static HashMap<String, Constructor<? extends Key>> sKeyMakers;
    private HashMap<Integer, ArrayList<Key>> mFramesMap = new HashMap<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        HashMap<String, Constructor<? extends Key>> map = new HashMap<>();
        sKeyMakers = map;
        try {
            map.put("KeyAttribute", KeyAttributes.class.getConstructor(null));
            sKeyMakers.put(TypedValues$PositionType.NAME, KeyPosition.class.getConstructor(null));
            sKeyMakers.put(TypedValues$CycleType.NAME, KeyCycle.class.getConstructor(null));
            sKeyMakers.put("KeyTimeCycle", KeyTimeCycle.class.getConstructor(null));
            sKeyMakers.put(TypedValues$TriggerType.NAME, KeyTrigger.class.getConstructor(null));
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "unable to load", e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public KeyFrames(Context context, XmlPullParser xmlPullParser) {
        HashMap<String, ConstraintAttribute> map;
        HashMap<String, ConstraintAttribute> map2;
        Key keyTimeCycle;
        try {
            int eventType = xmlPullParser.getEventType();
            Key key = null;
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (sKeyMakers.containsKey(name)) {
                        switch (name.hashCode()) {
                            case -300573030:
                                if (!name.equals("KeyTimeCycle")) {
                                    throw new NullPointerException("Key " + name + " not found");
                                }
                                keyTimeCycle = new KeyTimeCycle();
                                keyTimeCycle.load(context, Xml.asAttributeSet(xmlPullParser));
                                addKey(keyTimeCycle);
                                key = keyTimeCycle;
                                break;
                                break;
                            case -298435811:
                                if (!name.equals("KeyAttribute")) {
                                    throw new NullPointerException("Key " + name + " not found");
                                }
                                keyTimeCycle = new KeyAttributes();
                                keyTimeCycle.load(context, Xml.asAttributeSet(xmlPullParser));
                                addKey(keyTimeCycle);
                                key = keyTimeCycle;
                                break;
                                break;
                            case 540053991:
                                if (!name.equals(TypedValues$CycleType.NAME)) {
                                    throw new NullPointerException("Key " + name + " not found");
                                }
                                keyTimeCycle = new KeyCycle();
                                keyTimeCycle.load(context, Xml.asAttributeSet(xmlPullParser));
                                addKey(keyTimeCycle);
                                key = keyTimeCycle;
                                break;
                                break;
                            case 1153397896:
                                if (!name.equals(TypedValues$PositionType.NAME)) {
                                    throw new NullPointerException("Key " + name + " not found");
                                }
                                keyTimeCycle = new KeyPosition();
                                keyTimeCycle.load(context, Xml.asAttributeSet(xmlPullParser));
                                addKey(keyTimeCycle);
                                key = keyTimeCycle;
                                break;
                                break;
                            case 1308496505:
                                if (!name.equals(TypedValues$TriggerType.NAME)) {
                                    throw new NullPointerException("Key " + name + " not found");
                                }
                                keyTimeCycle = new KeyTrigger();
                                keyTimeCycle.load(context, Xml.asAttributeSet(xmlPullParser));
                                addKey(keyTimeCycle);
                                key = keyTimeCycle;
                                break;
                                break;
                            default:
                                throw new NullPointerException("Key " + name + " not found");
                        }
                    }
                    if (name.equalsIgnoreCase("CustomAttribute")) {
                        if (key != null && (map2 = key.mCustomConstraints) != null) {
                            ConstraintAttribute.parse(context, xmlPullParser, map2);
                        }
                    } else if (name.equalsIgnoreCase("CustomMethod") && key != null && (map = key.mCustomConstraints) != null) {
                        ConstraintAttribute.parse(context, xmlPullParser, map);
                    }
                } else if (eventType == 3 && ViewTransition.KEY_FRAME_SET_TAG.equals(xmlPullParser.getName())) {
                    return;
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e) {
            Log.e(TAG, "Error parsing XML resource", e);
        } catch (XmlPullParserException e6) {
            Log.e(TAG, "Error parsing XML resource", e6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String name(int i9, Context context) {
        return context.getResources().getResourceEntryName(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addAllFrames(MotionController motionController) {
        ArrayList<Key> arrayList = this.mFramesMap.get(-1);
        if (arrayList != null) {
            motionController.addKeys(arrayList);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addFrames(MotionController motionController) {
        ArrayList<Key> arrayList = this.mFramesMap.get(Integer.valueOf(motionController.mId));
        if (arrayList != null) {
            motionController.addKeys(arrayList);
        }
        ArrayList<Key> arrayList2 = this.mFramesMap.get(-1);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            int i9 = 0;
            while (i9 < size) {
                Key key = arrayList2.get(i9);
                i9++;
                Key key2 = key;
                if (key2.matches(((ConstraintLayout$LayoutParams) motionController.mView.getLayoutParams()).constraintTag)) {
                    motionController.addKey(key2);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addKey(Key key) {
        if (!this.mFramesMap.containsKey(Integer.valueOf(key.mTargetId))) {
            this.mFramesMap.put(Integer.valueOf(key.mTargetId), new ArrayList<>());
        }
        ArrayList<Key> arrayList = this.mFramesMap.get(Integer.valueOf(key.mTargetId));
        if (arrayList != null) {
            arrayList.add(key);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayList<Key> getKeyFramesForView(int i9) {
        return this.mFramesMap.get(Integer.valueOf(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Set<Integer> getKeys() {
        return this.mFramesMap.keySet();
    }

    public KeyFrames() {
    }
}
