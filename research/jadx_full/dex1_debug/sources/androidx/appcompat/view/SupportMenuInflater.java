package androidx.appcompat.view;

import ai.onnxruntime.b;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import androidx.annotation.LayoutRes;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ActionProvider;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public class SupportMenuInflater extends MenuInflater {
    static final Class<?>[] ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE;
    static final Class<?>[] ACTION_VIEW_CONSTRUCTOR_SIGNATURE;
    static final String LOG_TAG = "SupportMenuInflater";
    static final int NO_ID = 0;
    private static final String XML_GROUP = "group";
    private static final String XML_ITEM = "item";
    private static final String XML_MENU = "menu";
    final Object[] mActionProviderConstructorArguments;
    final Object[] mActionViewConstructorArguments;
    Context mContext;
    private Object mRealOwner;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Class<?>[] clsArr = {Context.class};
        ACTION_VIEW_CONSTRUCTOR_SIGNATURE = clsArr;
        ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE = clsArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SupportMenuInflater(Context context) {
        super(context);
        this.mContext = context;
        Object[] objArr = {context};
        this.mActionViewConstructorArguments = objArr;
        this.mActionProviderConstructorArguments = objArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Object findRealOwner(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? findRealOwner(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void parseMenu(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        SupportMenuInflater$MenuState supportMenuInflater$MenuState = new SupportMenuInflater$MenuState(this, menu);
        int eventType = xmlPullParser.getEventType();
        do {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (name.equals(XML_MENU)) {
                    eventType = xmlPullParser.next();
                    break;
                } else {
                    b.h("Expecting menu, got ".concat(name));
                    return;
                }
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        boolean z8 = false;
        boolean z9 = false;
        String str = null;
        while (!z8) {
            if (eventType == 1) {
                b.h("Unexpected end of document");
                return;
            }
            if (eventType != 2) {
                if (eventType == 3) {
                    String name2 = xmlPullParser.getName();
                    if (z9 && name2.equals(str)) {
                        z9 = false;
                        str = null;
                    } else if (name2.equals(XML_GROUP)) {
                        supportMenuInflater$MenuState.resetGroup();
                    } else if (name2.equals(XML_ITEM)) {
                        if (!supportMenuInflater$MenuState.hasAddedItem()) {
                            ActionProvider actionProvider = supportMenuInflater$MenuState.itemActionProvider;
                            if (actionProvider == null || !actionProvider.hasSubMenu()) {
                                supportMenuInflater$MenuState.addItem();
                            } else {
                                supportMenuInflater$MenuState.addSubMenuItem();
                            }
                        }
                    } else if (name2.equals(XML_MENU)) {
                        z8 = true;
                    }
                }
            } else if (!z9) {
                String name3 = xmlPullParser.getName();
                if (name3.equals(XML_GROUP)) {
                    supportMenuInflater$MenuState.readGroup(attributeSet);
                } else if (name3.equals(XML_ITEM)) {
                    supportMenuInflater$MenuState.readItem(attributeSet);
                } else if (name3.equals(XML_MENU)) {
                    parseMenu(xmlPullParser, attributeSet, supportMenuInflater$MenuState.addSubMenuItem());
                } else {
                    str = name3;
                    z9 = true;
                }
            }
            eventType = xmlPullParser.next();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object getRealOwner() {
        if (this.mRealOwner == null) {
            this.mRealOwner = findRealOwner(this.mContext);
        }
        return this.mRealOwner;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.MenuInflater
    public void inflate(@LayoutRes int i9, Menu menu) {
        if (!(menu instanceof SupportMenu)) {
            super.inflate(i9, menu);
            return;
        }
        XmlResourceParser layout = null;
        boolean z8 = false;
        try {
            try {
                layout = this.mContext.getResources().getLayout(i9);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(layout);
                if (menu instanceof MenuBuilder) {
                    MenuBuilder menuBuilder = (MenuBuilder) menu;
                    if (menuBuilder.isDispatchingItemsChanged()) {
                        menuBuilder.stopDispatchingItemsChanged();
                        z8 = true;
                    }
                }
                parseMenu(layout, attributeSetAsAttributeSet, menu);
                if (z8) {
                    ((MenuBuilder) menu).startDispatchingItemsChanged();
                }
                if (layout != null) {
                    layout.close();
                }
            } catch (IOException e) {
                throw new InflateException("Error inflating menu XML", e);
            } catch (XmlPullParserException e6) {
                throw new InflateException("Error inflating menu XML", e6);
            }
        } catch (Throwable th) {
            if (z8) {
                ((MenuBuilder) menu).startDispatchingItemsChanged();
            }
            if (layout != null) {
                layout.close();
            }
            throw th;
        }
    }
}
