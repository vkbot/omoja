package com.android.server.display;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.SystemProperties;
import android.util.Slog;
import android.view.Display;
import android.view.DisplayInfo;
import android.view.SurfaceControl;
import com.android.server.wm.utils.InsetUtils;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class LogicalDisplay {
    private static final int BLANK_LAYER_STACK = -1;
    private static final String TAG = "LogicalDisplay";
    private final int mDisplayId;
    private int mDisplayOffsetX;
    private int mDisplayOffsetY;
    private boolean mDisplayScalingDisabled;
    private boolean mHasContent;
    private final int mLayerStack;
    private DisplayInfo mOverrideDisplayInfo;
    private DisplayDevice mPrimaryDisplayDevice;
    private DisplayDeviceInfo mPrimaryDisplayDeviceInfo;
    private int mRequestedColorMode;
    private boolean mRequestedMinimalPostProcessing;
    private final DisplayInfo mBaseDisplayInfo = new DisplayInfo();
    private final DisplayInfoProxy mInfo = new DisplayInfoProxy(null);
    private DisplayModeDirector.DesiredDisplayModeSpecs mDesiredDisplayModeSpecs = new DisplayModeDirector.DesiredDisplayModeSpecs();
    private final Point mDisplayPosition = new Point();
    private final Rect mTempLayerStackRect = new Rect();
    private final Rect mTempDisplayRect = new Rect();

    public LogicalDisplay(int displayId, int layerStack, DisplayDevice primaryDisplayDevice) {
        this.mDisplayId = displayId;
        this.mLayerStack = layerStack;
        this.mPrimaryDisplayDevice = primaryDisplayDevice;
    }

    public int getDisplayIdLocked() {
        return this.mDisplayId;
    }

    public DisplayDevice getPrimaryDisplayDeviceLocked() {
        return this.mPrimaryDisplayDevice;
    }

    public DisplayInfo getDisplayInfoLocked() {
        if (this.mInfo.get() == null) {
            DisplayInfo info = new DisplayInfo();
            info.copyFrom(this.mBaseDisplayInfo);
            DisplayInfo displayInfo = this.mOverrideDisplayInfo;
            if (displayInfo != null) {
                info.appWidth = displayInfo.appWidth;
                info.appHeight = this.mOverrideDisplayInfo.appHeight;
                info.smallestNominalAppWidth = this.mOverrideDisplayInfo.smallestNominalAppWidth;
                info.smallestNominalAppHeight = this.mOverrideDisplayInfo.smallestNominalAppHeight;
                info.largestNominalAppWidth = this.mOverrideDisplayInfo.largestNominalAppWidth;
                info.largestNominalAppHeight = this.mOverrideDisplayInfo.largestNominalAppHeight;
                info.logicalWidth = this.mOverrideDisplayInfo.logicalWidth;
                info.logicalHeight = this.mOverrideDisplayInfo.logicalHeight;
                info.rotation = this.mOverrideDisplayInfo.rotation;
                info.displayCutout = this.mOverrideDisplayInfo.displayCutout;
                info.logicalDensityDpi = this.mOverrideDisplayInfo.logicalDensityDpi;
                info.physicalXDpi = this.mOverrideDisplayInfo.physicalXDpi;
                info.physicalYDpi = this.mOverrideDisplayInfo.physicalYDpi;
            }
            this.mInfo.set(info);
        }
        return this.mInfo.get();
    }

    void getNonOverrideDisplayInfoLocked(DisplayInfo outInfo) {
        outInfo.copyFrom(this.mBaseDisplayInfo);
    }

    public boolean setDisplayInfoOverrideFromWindowManagerLocked(DisplayInfo info) {
        if (info != null) {
            DisplayInfo displayInfo = this.mOverrideDisplayInfo;
            if (displayInfo == null) {
                this.mOverrideDisplayInfo = new DisplayInfo(info);
                this.mInfo.set(null);
                return true;
            }
            if (!displayInfo.equals(info)) {
                this.mOverrideDisplayInfo.copyFrom(info);
                this.mInfo.set(null);
                return true;
            }
            return false;
        }
        if (this.mOverrideDisplayInfo != null) {
            this.mOverrideDisplayInfo = null;
            this.mInfo.set(null);
            return true;
        }
        return false;
    }

    public boolean isValidLocked() {
        return this.mPrimaryDisplayDevice != null;
    }

    public void updateLocked(List<DisplayDevice> devices) {
        DisplayDevice displayDevice = this.mPrimaryDisplayDevice;
        if (displayDevice == null) {
            return;
        }
        if (!devices.contains(displayDevice)) {
            this.mPrimaryDisplayDevice = null;
            return;
        }
        DisplayDeviceInfo deviceInfo = this.mPrimaryDisplayDevice.getDisplayDeviceInfoLocked();
        if (!Objects.equals(this.mPrimaryDisplayDeviceInfo, deviceInfo)) {
            this.mBaseDisplayInfo.layerStack = this.mLayerStack;
            this.mBaseDisplayInfo.flags = 0;
            if ((deviceInfo.flags & 8) != 0) {
                this.mBaseDisplayInfo.flags |= 1;
            }
            if ((deviceInfo.flags & 4) != 0) {
                this.mBaseDisplayInfo.flags |= 2;
            }
            if ((deviceInfo.flags & 16) != 0) {
                this.mBaseDisplayInfo.flags |= 4;
                this.mBaseDisplayInfo.removeMode = 1;
            }
            if ((deviceInfo.flags & 1024) != 0) {
                this.mBaseDisplayInfo.removeMode = 1;
            }
            if ((deviceInfo.flags & 64) != 0) {
                this.mBaseDisplayInfo.flags |= 8;
            }
            if ((deviceInfo.flags & 256) != 0) {
                this.mBaseDisplayInfo.flags |= 16;
            }
            if ((deviceInfo.flags & 512) != 0) {
                this.mBaseDisplayInfo.flags |= 32;
            }
            if ((deviceInfo.flags & 4096) != 0) {
                this.mBaseDisplayInfo.flags |= 64;
            }
            if ((deviceInfo.flags & 8192) != 0) {
                this.mBaseDisplayInfo.flags |= 128;
            }
            Rect maskingInsets = getMaskingInsets(deviceInfo);
            int maskedWidth = (deviceInfo.width - maskingInsets.left) - maskingInsets.right;
            int maskedHeight = (deviceInfo.height - maskingInsets.top) - maskingInsets.bottom;
            this.mBaseDisplayInfo.type = deviceInfo.type;
            this.mBaseDisplayInfo.address = deviceInfo.address;
            this.mBaseDisplayInfo.deviceProductInfo = deviceInfo.deviceProductInfo;
            this.mBaseDisplayInfo.name = deviceInfo.name;
            this.mBaseDisplayInfo.uniqueId = deviceInfo.uniqueId;
            this.mBaseDisplayInfo.appWidth = maskedWidth;
            this.mBaseDisplayInfo.appHeight = maskedHeight;
            this.mBaseDisplayInfo.logicalWidth = maskedWidth;
            this.mBaseDisplayInfo.logicalHeight = maskedHeight;
            this.mBaseDisplayInfo.rotation = 0;
            this.mBaseDisplayInfo.modeId = deviceInfo.modeId;
            this.mBaseDisplayInfo.defaultModeId = deviceInfo.defaultModeId;
            this.mBaseDisplayInfo.supportedModes = (Display.Mode[]) Arrays.copyOf(deviceInfo.supportedModes, deviceInfo.supportedModes.length);
            this.mBaseDisplayInfo.colorMode = deviceInfo.colorMode;
            this.mBaseDisplayInfo.supportedColorModes = Arrays.copyOf(deviceInfo.supportedColorModes, deviceInfo.supportedColorModes.length);
            this.mBaseDisplayInfo.hdrCapabilities = deviceInfo.hdrCapabilities;
            this.mBaseDisplayInfo.minimalPostProcessingSupported = deviceInfo.allmSupported || deviceInfo.gameContentTypeSupported;
            this.mBaseDisplayInfo.logicalDensityDpi = deviceInfo.densityDpi;
            this.mBaseDisplayInfo.physicalXDpi = deviceInfo.xDpi;
            this.mBaseDisplayInfo.physicalYDpi = deviceInfo.yDpi;
            this.mBaseDisplayInfo.appVsyncOffsetNanos = deviceInfo.appVsyncOffsetNanos;
            this.mBaseDisplayInfo.presentationDeadlineNanos = deviceInfo.presentationDeadlineNanos;
            this.mBaseDisplayInfo.state = deviceInfo.state;
            this.mBaseDisplayInfo.smallestNominalAppWidth = maskedWidth;
            this.mBaseDisplayInfo.smallestNominalAppHeight = maskedHeight;
            this.mBaseDisplayInfo.largestNominalAppWidth = maskedWidth;
            this.mBaseDisplayInfo.largestNominalAppHeight = maskedHeight;
            this.mBaseDisplayInfo.ownerUid = deviceInfo.ownerUid;
            this.mBaseDisplayInfo.ownerPackageName = deviceInfo.ownerPackageName;
            boolean maskCutout = (deviceInfo.flags & 2048) != 0;
            this.mBaseDisplayInfo.displayCutout = maskCutout ? null : deviceInfo.displayCutout;
            this.mBaseDisplayInfo.displayId = this.mDisplayId;
            this.mPrimaryDisplayDeviceInfo = deviceInfo;
            this.mInfo.set(null);
        }
    }

    public Rect getInsets() {
        return getMaskingInsets(this.mPrimaryDisplayDeviceInfo);
    }

    private static Rect getMaskingInsets(DisplayDeviceInfo deviceInfo) {
        boolean maskCutout = (deviceInfo.flags & 2048) != 0;
        if (maskCutout && deviceInfo.displayCutout != null) {
            return deviceInfo.displayCutout.getSafeInsets();
        }
        return new Rect();
    }

    Point getDisplayPosition() {
        return new Point(this.mDisplayPosition);
    }

    public void configureDisplayLocked(SurfaceControl.Transaction t, DisplayDevice device, boolean isBlanked) {
        int displayRectWidth;
        int displayRectHeight;
        Slog.d(TAG, "xuyong-configureDisplayLocked, device = " + device + ", isBlanked = " + isBlanked + ", mLayerStack = " + this.mLayerStack);
        device.setLayerStackLocked(t, isBlanked ? -1 : this.mLayerStack);
        if (device == this.mPrimaryDisplayDevice) {
            device.setDesiredDisplayModeSpecsLocked(this.mDesiredDisplayModeSpecs);
            device.setRequestedColorModeLocked(this.mRequestedColorMode);
        } else {
            device.setDesiredDisplayModeSpecsLocked(new DisplayModeDirector.DesiredDisplayModeSpecs());
            device.setRequestedColorModeLocked(0);
        }
        device.setAutoLowLatencyModeLocked(this.mRequestedMinimalPostProcessing);
        device.setGameContentTypeLocked(this.mRequestedMinimalPostProcessing);
        DisplayInfo displayInfo = getDisplayInfoLocked();
        DisplayDeviceInfo displayDeviceInfo = device.getDisplayDeviceInfoLocked();
        this.mTempLayerStackRect.set(0, 0, displayInfo.logicalWidth, displayInfo.logicalHeight);
        int orientation = 0;
        if ((displayDeviceInfo.flags & 2) != 0) {
            orientation = displayInfo.rotation;
        }
        int orientation2 = (displayDeviceInfo.rotation + orientation) % 4;
        boolean rotated = orientation2 == 1 || orientation2 == 3;
        int physWidth = rotated ? displayDeviceInfo.height : displayDeviceInfo.width;
        int physHeight = rotated ? displayDeviceInfo.width : displayDeviceInfo.height;
        Rect maskingInsets = getMaskingInsets(displayDeviceInfo);
        InsetUtils.rotateInsets(maskingInsets, orientation2);
        int physWidth2 = physWidth - (maskingInsets.left + maskingInsets.right);
        int physHeight2 = physHeight - (maskingInsets.top + maskingInsets.bottom);
        if ((displayInfo.flags & 1073741824) != 0 || this.mDisplayScalingDisabled) {
            displayRectWidth = displayInfo.logicalWidth;
            displayRectHeight = displayInfo.logicalHeight;
        } else if (displayInfo.logicalHeight * physWidth2 < displayInfo.logicalWidth * physHeight2) {
            displayRectWidth = physWidth2;
            displayRectHeight = (displayInfo.logicalHeight * physWidth2) / displayInfo.logicalWidth;
        } else {
            int displayRectWidth2 = displayInfo.logicalWidth;
            displayRectWidth = (displayRectWidth2 * physHeight2) / displayInfo.logicalHeight;
            displayRectHeight = physHeight2;
        }
        int displayRectTop = (physHeight2 - displayRectHeight) / 2;
        int displayRectLeft = (physWidth2 - displayRectWidth) / 2;
        this.mTempDisplayRect.set(displayRectLeft, displayRectTop, displayRectLeft + displayRectWidth, displayRectTop + displayRectHeight);
        Rect borderShrinkRect = Rect.unflattenFromString(SystemProperties.get("persist.mega.logical_display_border_shrink", ""));
        if (borderShrinkRect != null) {
            this.mTempDisplayRect.left += borderShrinkRect.left;
            this.mTempDisplayRect.top += borderShrinkRect.top;
            this.mTempDisplayRect.right += borderShrinkRect.right;
            this.mTempDisplayRect.bottom += borderShrinkRect.bottom;
        }
        this.mTempDisplayRect.offset(maskingInsets.left, maskingInsets.top);
        if (orientation2 == 0) {
            this.mTempDisplayRect.offset(this.mDisplayOffsetX, this.mDisplayOffsetY);
        } else if (orientation2 == 1) {
            this.mTempDisplayRect.offset(this.mDisplayOffsetY, -this.mDisplayOffsetX);
        } else if (orientation2 == 2) {
            this.mTempDisplayRect.offset(-this.mDisplayOffsetX, -this.mDisplayOffsetY);
        } else {
            this.mTempDisplayRect.offset(-this.mDisplayOffsetY, this.mDisplayOffsetX);
        }
        this.mDisplayPosition.set(this.mTempDisplayRect.left, this.mTempDisplayRect.top);
        device.setProjectionLocked(t, orientation2, this.mTempLayerStackRect, this.mTempDisplayRect);
    }

    public boolean hasContentLocked() {
        return this.mHasContent;
    }

    public void setHasContentLocked(boolean hasContent) {
        this.mHasContent = hasContent;
    }

    public void setDesiredDisplayModeSpecsLocked(DisplayModeDirector.DesiredDisplayModeSpecs specs) {
        this.mDesiredDisplayModeSpecs = specs;
    }

    public DisplayModeDirector.DesiredDisplayModeSpecs getDesiredDisplayModeSpecsLocked() {
        return this.mDesiredDisplayModeSpecs;
    }

    public void setRequestedColorModeLocked(int colorMode) {
        this.mRequestedColorMode = colorMode;
    }

    public boolean getRequestedMinimalPostProcessingLocked() {
        return this.mRequestedMinimalPostProcessing;
    }

    public void setRequestedMinimalPostProcessingLocked(boolean on) {
        this.mRequestedMinimalPostProcessing = on;
    }

    public int getRequestedColorModeLocked() {
        return this.mRequestedColorMode;
    }

    public int getDisplayOffsetXLocked() {
        return this.mDisplayOffsetX;
    }

    public int getDisplayOffsetYLocked() {
        return this.mDisplayOffsetY;
    }

    public void setDisplayOffsetsLocked(int x, int y) {
        this.mDisplayOffsetX = x;
        this.mDisplayOffsetY = y;
    }

    public boolean isDisplayScalingDisabled() {
        return this.mDisplayScalingDisabled;
    }

    public void setDisplayScalingDisabledLocked(boolean disableScaling) {
        this.mDisplayScalingDisabled = disableScaling;
    }

    public void dumpLocked(PrintWriter pw) {
        pw.println("mDisplayId=" + this.mDisplayId);
        pw.println("mLayerStack=" + this.mLayerStack);
        pw.println("mHasContent=" + this.mHasContent);
        pw.println("mDesiredDisplayModeSpecs={" + this.mDesiredDisplayModeSpecs + "}");
        StringBuilder sb = new StringBuilder();
        sb.append("mRequestedColorMode=");
        sb.append(this.mRequestedColorMode);
        pw.println(sb.toString());
        pw.println("mDisplayOffset=(" + this.mDisplayOffsetX + ", " + this.mDisplayOffsetY + ")");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("mDisplayScalingDisabled=");
        sb2.append(this.mDisplayScalingDisabled);
        pw.println(sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append("mPrimaryDisplayDevice=");
        DisplayDevice displayDevice = this.mPrimaryDisplayDevice;
        sb3.append(displayDevice != null ? displayDevice.getNameLocked() : "null");
        pw.println(sb3.toString());
        pw.println("mBaseDisplayInfo=" + this.mBaseDisplayInfo);
        pw.println("mOverrideDisplayInfo=" + this.mOverrideDisplayInfo);
        pw.println("mRequestedMinimalPostProcessing=" + this.mRequestedMinimalPostProcessing);
    }
}
