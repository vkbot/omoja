package com.mega.nexus.net.wifi;

import android.net.MacAddress;
import android.net.wifi.SoftApConfiguration;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class MegaSoftApConfigurationBuilder {
    private SoftApConfiguration.Builder mBuilder;

    public MegaSoftApConfigurationBuilder() {
        this.mBuilder = new SoftApConfiguration.Builder();
    }

    public MegaSoftApConfigurationBuilder(SoftApConfiguration softApConfiguration) {
        this.mBuilder = new SoftApConfiguration.Builder(softApConfiguration);
    }

    public SoftApConfiguration build() {
        return this.mBuilder.build();
    }

    public MegaSoftApConfigurationBuilder setSsid(String str) {
        this.mBuilder = this.mBuilder.setSsid(str);
        return this;
    }

    public MegaSoftApConfigurationBuilder setBssid(MacAddress macAddress) {
        this.mBuilder = this.mBuilder.setBssid(macAddress);
        return this;
    }

    public MegaSoftApConfigurationBuilder setPassphrase(String str, int i) {
        this.mBuilder = this.mBuilder.setPassphrase(str, i);
        return this;
    }

    public MegaSoftApConfigurationBuilder setHiddenSsid(boolean z) {
        this.mBuilder = this.mBuilder.setHiddenSsid(z);
        return this;
    }

    public MegaSoftApConfigurationBuilder setBand(int i) {
        this.mBuilder = this.mBuilder.setBand(i);
        return this;
    }

    public MegaSoftApConfigurationBuilder setChannel(int i, int i2) {
        this.mBuilder = this.mBuilder.setChannel(i, i2);
        return this;
    }

    public MegaSoftApConfigurationBuilder setMaxNumberOfClients(int i) {
        this.mBuilder = this.mBuilder.setMaxNumberOfClients(i);
        return this;
    }

    public MegaSoftApConfigurationBuilder setAutoShutdownEnabled(boolean z) {
        this.mBuilder = this.mBuilder.setAutoShutdownEnabled(z);
        return this;
    }

    public MegaSoftApConfigurationBuilder setShutdownTimeoutMillis(long j) {
        this.mBuilder = this.mBuilder.setShutdownTimeoutMillis(j);
        return this;
    }

    public MegaSoftApConfigurationBuilder setClientControlByUserEnabled(boolean z) {
        this.mBuilder = this.mBuilder.setClientControlByUserEnabled(z);
        return this;
    }

    public MegaSoftApConfigurationBuilder setAllowedClientList(List<MacAddress> list) {
        this.mBuilder = this.mBuilder.setAllowedClientList(list);
        return this;
    }

    public MegaSoftApConfigurationBuilder setBlockedClientList(List<MacAddress> list) {
        this.mBuilder = this.mBuilder.setBlockedClientList(list);
        return this;
    }
}
