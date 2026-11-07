package com.android.server.net;

import android.net.IpConfiguration;
import android.net.LinkAddress;
import android.net.NetworkUtils;
import android.net.ProxyInfo;
import android.net.RouteInfo;
import android.net.StaticIpConfiguration;
import android.util.ArrayMap;
import android.util.Log;
import android.util.SparseArray;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.Inet4Address;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes.dex */
public class IpConfigStore {
    private static final boolean DBG = false;
    protected static final String DNS_KEY = "dns";
    protected static final String EOS = "eos";
    protected static final String EXCLUSION_LIST_KEY = "exclusionList";
    protected static final String GATEWAY_KEY = "gateway";
    protected static final String ID_KEY = "id";
    protected static final int IPCONFIG_FILE_VERSION = 3;
    protected static final String IP_ASSIGNMENT_KEY = "ipAssignment";
    protected static final String LINK_ADDRESS_KEY = "linkAddress";
    protected static final String PROXY_HOST_KEY = "proxyHost";
    protected static final String PROXY_PAC_FILE = "proxyPac";
    protected static final String PROXY_PORT_KEY = "proxyPort";
    protected static final String PROXY_SETTINGS_KEY = "proxySettings";
    private static final String TAG = "IpConfigStore";
    protected final DelayedDiskWrite mWriter;

    public IpConfigStore(DelayedDiskWrite writer) {
        this.mWriter = writer;
    }

    public IpConfigStore() {
        this(new DelayedDiskWrite());
    }

    private static boolean writeConfig(DataOutputStream out, String configKey, IpConfiguration config) throws IOException {
        return writeConfig(out, configKey, config, 3);
    }

    public static boolean writeConfig(DataOutputStream out, String configKey, IpConfiguration config, int version) throws IOException {
        boolean written = false;
        try {
            int i = AnonymousClass1.$SwitchMap$android$net$IpConfiguration$IpAssignment[config.ipAssignment.ordinal()];
            if (i == 1) {
                out.writeUTF(IP_ASSIGNMENT_KEY);
                out.writeUTF(config.ipAssignment.toString());
                StaticIpConfiguration staticIpConfiguration = config.staticIpConfiguration;
                if (staticIpConfiguration != null) {
                    if (staticIpConfiguration.ipAddress != null) {
                        LinkAddress ipAddress = staticIpConfiguration.ipAddress;
                        out.writeUTF(LINK_ADDRESS_KEY);
                        out.writeUTF(ipAddress.getAddress().getHostAddress());
                        out.writeInt(ipAddress.getPrefixLength());
                    }
                    if (staticIpConfiguration.gateway != null) {
                        out.writeUTF(GATEWAY_KEY);
                        out.writeInt(0);
                        out.writeInt(1);
                        out.writeUTF(staticIpConfiguration.gateway.getHostAddress());
                    }
                    for (InetAddress inetAddr : staticIpConfiguration.dnsServers) {
                        out.writeUTF(DNS_KEY);
                        out.writeUTF(inetAddr.getHostAddress());
                    }
                }
                written = true;
            } else if (i == 2) {
                out.writeUTF(IP_ASSIGNMENT_KEY);
                out.writeUTF(config.ipAssignment.toString());
                written = true;
            } else if (i != 3) {
                loge("Ignore invalid ip assignment while writing");
            }
            int i2 = AnonymousClass1.$SwitchMap$android$net$IpConfiguration$ProxySettings[config.proxySettings.ordinal()];
            if (i2 == 1) {
                ProxyInfo proxyPacProperties = config.httpProxy;
                String exclusionList = proxyPacProperties.getExclusionListAsString();
                out.writeUTF(PROXY_SETTINGS_KEY);
                out.writeUTF(config.proxySettings.toString());
                out.writeUTF(PROXY_HOST_KEY);
                out.writeUTF(proxyPacProperties.getHost());
                out.writeUTF(PROXY_PORT_KEY);
                out.writeInt(proxyPacProperties.getPort());
                if (exclusionList != null) {
                    out.writeUTF(EXCLUSION_LIST_KEY);
                    out.writeUTF(exclusionList);
                }
                written = true;
            } else if (i2 == 2) {
                ProxyInfo proxyPacProperties2 = config.httpProxy;
                out.writeUTF(PROXY_SETTINGS_KEY);
                out.writeUTF(config.proxySettings.toString());
                out.writeUTF(PROXY_PAC_FILE);
                out.writeUTF(proxyPacProperties2.getPacFileUrl().toString());
                written = true;
            } else if (i2 == 3) {
                out.writeUTF(PROXY_SETTINGS_KEY);
                out.writeUTF(config.proxySettings.toString());
                written = true;
            } else if (i2 != 4) {
                loge("Ignore invalid proxy settings while writing");
            }
            if (written) {
                out.writeUTF(ID_KEY);
                if (version < 3) {
                    out.writeInt(Integer.valueOf(configKey).intValue());
                } else {
                    out.writeUTF(configKey);
                }
            }
        } catch (NullPointerException e) {
            loge("Failure in writing " + config + e);
        }
        out.writeUTF(EOS);
        return written;
    }

    /* JADX INFO: renamed from: com.android.server.net.IpConfigStore$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$net$IpConfiguration$IpAssignment;
        static final /* synthetic */ int[] $SwitchMap$android$net$IpConfiguration$ProxySettings;

        static {
            int[] iArr = new int[IpConfiguration.ProxySettings.values().length];
            $SwitchMap$android$net$IpConfiguration$ProxySettings = iArr;
            try {
                iArr[IpConfiguration.ProxySettings.STATIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$android$net$IpConfiguration$ProxySettings[IpConfiguration.ProxySettings.PAC.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$android$net$IpConfiguration$ProxySettings[IpConfiguration.ProxySettings.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$android$net$IpConfiguration$ProxySettings[IpConfiguration.ProxySettings.UNASSIGNED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[IpConfiguration.IpAssignment.values().length];
            $SwitchMap$android$net$IpConfiguration$IpAssignment = iArr2;
            try {
                iArr2[IpConfiguration.IpAssignment.STATIC.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$android$net$IpConfiguration$IpAssignment[IpConfiguration.IpAssignment.DHCP.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$android$net$IpConfiguration$IpAssignment[IpConfiguration.IpAssignment.UNASSIGNED.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    @Deprecated
    public void writeIpAndProxyConfigurationsToFile(String filePath, final SparseArray<IpConfiguration> networks) {
        this.mWriter.write(filePath, new DelayedDiskWrite.Writer() { // from class: com.android.server.net.-$$Lambda$IpConfigStore$O2tmBZ0pfEt3xGZYo5ZrQq4edzM
            @Override // com.android.server.net.DelayedDiskWrite.Writer
            public final void onWriteCalled(DataOutputStream dataOutputStream) throws IOException {
                IpConfigStore.lambda$writeIpAndProxyConfigurationsToFile$0(networks, dataOutputStream);
            }
        });
    }

    static /* synthetic */ void lambda$writeIpAndProxyConfigurationsToFile$0(SparseArray networks, DataOutputStream out) throws IOException {
        out.writeInt(3);
        for (int i = 0; i < networks.size(); i++) {
            writeConfig(out, String.valueOf(networks.keyAt(i)), (IpConfiguration) networks.valueAt(i));
        }
    }

    public void writeIpConfigurations(String filePath, final ArrayMap<String, IpConfiguration> networks) {
        this.mWriter.write(filePath, new DelayedDiskWrite.Writer() { // from class: com.android.server.net.-$$Lambda$IpConfigStore$rFY3yG3j6RGRgrQey7yYfi0Yze0
            @Override // com.android.server.net.DelayedDiskWrite.Writer
            public final void onWriteCalled(DataOutputStream dataOutputStream) throws IOException {
                IpConfigStore.lambda$writeIpConfigurations$1(networks, dataOutputStream);
            }
        });
    }

    static /* synthetic */ void lambda$writeIpConfigurations$1(ArrayMap networks, DataOutputStream out) throws IOException {
        out.writeInt(3);
        for (int i = 0; i < networks.size(); i++) {
            writeConfig(out, (String) networks.keyAt(i), (IpConfiguration) networks.valueAt(i));
        }
    }

    public static ArrayMap<String, IpConfiguration> readIpConfigurations(String filePath) {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(filePath));
            return readIpConfigurations(bufferedInputStream);
        } catch (FileNotFoundException e) {
            loge("Error opening configuration file: " + e);
            return new ArrayMap<>(0);
        }
    }

    @Deprecated
    public static SparseArray<IpConfiguration> readIpAndProxyConfigurations(String filePath) {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(filePath));
            return readIpAndProxyConfigurations(bufferedInputStream);
        } catch (FileNotFoundException e) {
            loge("Error opening configuration file: " + e);
            return new SparseArray<>();
        }
    }

    @Deprecated
    public static SparseArray<IpConfiguration> readIpAndProxyConfigurations(InputStream inputStream) throws IOException {
        ArrayMap<String, IpConfiguration> networks = readIpConfigurations(inputStream);
        if (networks == null) {
            return null;
        }
        SparseArray<IpConfiguration> networksById = new SparseArray<>();
        for (int i = 0; i < networks.size(); i++) {
            int id = Integer.valueOf(networks.keyAt(i)).intValue();
            networksById.put(id, networks.valueAt(i));
        }
        return networksById;
    }

    /* JADX INFO: Infinite loop detected, blocks: 150, insns: 0 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 5 */
    public static ArrayMap<String, IpConfiguration> readIpConfigurations(InputStream inputStream) throws IOException {
        int i;
        char c;
        IllegalArgumentException e;
        char c2;
        ArrayMap<String, IpConfiguration> networks = new ArrayMap<>();
        DataInputStream in = null;
        try {
            try {
                try {
                    DataInputStream in2 = new DataInputStream(inputStream);
                    int version = in2.readInt();
                    int i2 = 3;
                    if (version != 3 && version != 2 && version != 1) {
                        loge("Bad version on IP configuration file, ignore read");
                        try {
                            in2.close();
                        } catch (Exception e2) {
                        }
                        return null;
                    }
                    while (true) {
                        String uniqueToken = null;
                        IpConfiguration.IpAssignment ipAssignment = IpConfiguration.IpAssignment.DHCP;
                        IpConfiguration.ProxySettings proxySettings = IpConfiguration.ProxySettings.NONE;
                        StaticIpConfiguration staticIpConfiguration = new StaticIpConfiguration();
                        String proxyHost = null;
                        String pacFileUrl = null;
                        int proxyPort = -1;
                        String exclusionList = null;
                        while (true) {
                            String key = in2.readUTF();
                            try {
                                if (key.equals(ID_KEY)) {
                                    if (version < i2) {
                                        int id = in2.readInt();
                                        String uniqueToken2 = String.valueOf(id);
                                        i = version;
                                        uniqueToken = uniqueToken2;
                                        c = 2;
                                    } else {
                                        String uniqueToken3 = in2.readUTF();
                                        i = version;
                                        uniqueToken = uniqueToken3;
                                        c = 2;
                                    }
                                } else if (key.equals(IP_ASSIGNMENT_KEY)) {
                                    i = version;
                                    ipAssignment = IpConfiguration.IpAssignment.valueOf(in2.readUTF());
                                    c = 2;
                                } else if (key.equals(LINK_ADDRESS_KEY)) {
                                    LinkAddress linkAddr = new LinkAddress(NetworkUtils.numericToInetAddress(in2.readUTF()), in2.readInt());
                                    if ((linkAddr.getAddress() instanceof Inet4Address) && staticIpConfiguration.ipAddress == null) {
                                        staticIpConfiguration.ipAddress = linkAddr;
                                    } else {
                                        loge("Non-IPv4 or duplicate address: " + linkAddr);
                                    }
                                    i = version;
                                    c = 2;
                                } else if (key.equals(GATEWAY_KEY)) {
                                    LinkAddress dest = null;
                                    if (version == 1) {
                                        try {
                                            InetAddress gateway = NetworkUtils.numericToInetAddress(in2.readUTF());
                                            if (staticIpConfiguration.gateway == null) {
                                                staticIpConfiguration.gateway = gateway;
                                                i = version;
                                            } else {
                                                StringBuilder sb = new StringBuilder();
                                                i = version;
                                                try {
                                                    sb.append("Duplicate gateway: ");
                                                    sb.append(gateway.getHostAddress());
                                                    loge(sb.toString());
                                                } catch (IllegalArgumentException e3) {
                                                    e = e3;
                                                    e = e;
                                                    c = 2;
                                                    loge("Ignore invalid address while reading" + e);
                                                    version = i;
                                                    i2 = 3;
                                                }
                                            }
                                        } catch (IllegalArgumentException e4) {
                                            e = e4;
                                            i = version;
                                        }
                                    } else {
                                        i = version;
                                        if (in2.readInt() == 1) {
                                            dest = new LinkAddress(NetworkUtils.numericToInetAddress(in2.readUTF()), in2.readInt());
                                        }
                                        InetAddress gateway2 = in2.readInt() == 1 ? NetworkUtils.numericToInetAddress(in2.readUTF()) : null;
                                        RouteInfo route = new RouteInfo(dest, gateway2);
                                        if (route.isIPv4Default() && staticIpConfiguration.gateway == null) {
                                            staticIpConfiguration.gateway = gateway2;
                                        } else {
                                            loge("Non-IPv4 default or duplicate route: " + route);
                                        }
                                    }
                                    c = 2;
                                } else {
                                    i = version;
                                    try {
                                        if (key.equals(DNS_KEY)) {
                                            staticIpConfiguration.dnsServers.add(NetworkUtils.numericToInetAddress(in2.readUTF()));
                                            c = 2;
                                        } else if (key.equals(PROXY_SETTINGS_KEY)) {
                                            proxySettings = IpConfiguration.ProxySettings.valueOf(in2.readUTF());
                                            c = 2;
                                        } else if (key.equals(PROXY_HOST_KEY)) {
                                            proxyHost = in2.readUTF();
                                            c = 2;
                                        } else if (key.equals(PROXY_PORT_KEY)) {
                                            proxyPort = in2.readInt();
                                            c = 2;
                                        } else if (key.equals(PROXY_PAC_FILE)) {
                                            pacFileUrl = in2.readUTF();
                                            c = 2;
                                        } else if (key.equals(EXCLUSION_LIST_KEY)) {
                                            exclusionList = in2.readUTF();
                                            c = 2;
                                        } else {
                                            if (key.equals(EOS)) {
                                                break;
                                            }
                                            c = 2;
                                            try {
                                                loge("Ignore unknown key " + key + "while reading");
                                            } catch (IllegalArgumentException e5) {
                                                e = e5;
                                                e = e;
                                                loge("Ignore invalid address while reading" + e);
                                                version = i;
                                                i2 = 3;
                                            }
                                        }
                                    } catch (IllegalArgumentException e6) {
                                        e = e6;
                                        c = 2;
                                        e = e;
                                        loge("Ignore invalid address while reading" + e);
                                        version = i;
                                        i2 = 3;
                                    }
                                }
                                version = i;
                                i2 = 3;
                            } catch (IllegalArgumentException e7) {
                                e = e7;
                                i = version;
                            }
                        }
                        if (uniqueToken != null) {
                            IpConfiguration config = new IpConfiguration();
                            networks.put(uniqueToken, config);
                            int i3 = AnonymousClass1.$SwitchMap$android$net$IpConfiguration$IpAssignment[ipAssignment.ordinal()];
                            if (i3 == 1) {
                                config.staticIpConfiguration = staticIpConfiguration;
                                config.ipAssignment = ipAssignment;
                            } else if (i3 == 2) {
                                config.ipAssignment = ipAssignment;
                            } else if (i3 != 3) {
                                loge("Ignore invalid ip assignment while reading.");
                                config.ipAssignment = IpConfiguration.IpAssignment.UNASSIGNED;
                            } else {
                                loge("BUG: Found UNASSIGNED IP on file, use DHCP");
                                config.ipAssignment = IpConfiguration.IpAssignment.DHCP;
                            }
                            int i4 = AnonymousClass1.$SwitchMap$android$net$IpConfiguration$ProxySettings[proxySettings.ordinal()];
                            if (i4 != 1) {
                                c2 = 2;
                                if (i4 == 2) {
                                    ProxyInfo proxyPacProperties = new ProxyInfo(pacFileUrl);
                                    config.proxySettings = proxySettings;
                                    config.httpProxy = proxyPacProperties;
                                } else if (i4 == 3) {
                                    config.proxySettings = proxySettings;
                                } else if (i4 != 4) {
                                    loge("Ignore invalid proxy settings while reading");
                                    config.proxySettings = IpConfiguration.ProxySettings.UNASSIGNED;
                                } else {
                                    loge("BUG: Found UNASSIGNED proxy on file, use NONE");
                                    config.proxySettings = IpConfiguration.ProxySettings.NONE;
                                }
                            } else {
                                c2 = 2;
                                ProxyInfo proxyInfo = new ProxyInfo(proxyHost, proxyPort, exclusionList);
                                config.proxySettings = proxySettings;
                                config.httpProxy = proxyInfo;
                            }
                        } else {
                            c2 = 2;
                        }
                        version = i;
                        i2 = 3;
                    }
                } catch (Exception e8) {
                    return networks;
                }
            } catch (EOFException e9) {
                if (0 != 0) {
                    in.close();
                }
                return networks;
            } catch (IOException e10) {
                loge("Error parsing configuration: " + e10);
                if (0 != 0) {
                    in.close();
                }
                return networks;
            }
        } catch (Throwable th) {
            if (0 == 0) {
                throw th;
            }
            try {
                in.close();
                throw th;
            } catch (Exception e11) {
                throw th;
            }
        }
    }

    protected static void loge(String s) {
        Log.e(TAG, s);
    }

    protected static void log(String s) {
        Log.d(TAG, s);
    }
}
