package com.sun.jna;

import j1.i;
import java.awt.Component;
import java.awt.GraphicsEnvironment;
import java.awt.HeadlessException;
import java.awt.Window;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Native$AWT {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Native$AWT() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.awt.HeadlessException */
    public static long getComponentID(Object obj) throws HeadlessException {
        if (GraphicsEnvironment.isHeadless()) {
            throw new HeadlessException("No native windows when headless");
        }
        Component component = (Component) obj;
        if (component.isLightweight()) {
            i.k("Component must be heavyweight");
            return 0L;
        }
        if (!component.isDisplayable()) {
            i.l("Component must be displayable");
            return 0L;
        }
        if (!Platform.isX11() || !System.getProperty("java.version").startsWith("1.4") || component.isVisible()) {
            return Native.getWindowHandle0(component);
        }
        i.l("Component must be visible");
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long getWindowID(Window window) {
        return getComponentID(window);
    }
}
