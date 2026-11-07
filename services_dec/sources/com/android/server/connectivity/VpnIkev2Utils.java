package com.android.server.connectivity;

import android.content.Context;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.net.ConnectivityManager;
import android.net.Ikev2VpnProfile;
import android.net.InetAddresses;
import android.net.IpPrefix;
import android.net.IpSecTransform;
import android.net.Network;
import android.net.RouteInfo;
import android.net.eap.EapSessionConfig;
import android.net.ipsec.ike.ChildSaProposal;
import android.net.ipsec.ike.ChildSessionCallback;
import android.net.ipsec.ike.ChildSessionConfiguration;
import android.net.ipsec.ike.ChildSessionParams;
import android.net.ipsec.ike.IkeFqdnIdentification;
import android.net.ipsec.ike.IkeIdentification;
import android.net.ipsec.ike.IkeIpv4AddrIdentification;
import android.net.ipsec.ike.IkeIpv6AddrIdentification;
import android.net.ipsec.ike.IkeKeyIdIdentification;
import android.net.ipsec.ike.IkeRfc822AddrIdentification;
import android.net.ipsec.ike.IkeSaProposal;
import android.net.ipsec.ike.IkeSessionCallback;
import android.net.ipsec.ike.IkeSessionConfiguration;
import android.net.ipsec.ike.IkeSessionParams;
import android.net.ipsec.ike.IkeTrafficSelector;
import android.net.ipsec.ike.TunnelModeChildSessionParams;
import android.net.ipsec.ike.exceptions.IkeException;
import android.net.ipsec.ike.exceptions.IkeProtocolException;
import android.net.util.IpRange;
import android.system.OsConstants;
import android.util.Log;
import com.android.internal.util.HexDump;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class VpnIkev2Utils {
    private static final int DH_GROUP_3072_BIT_MODP = 15;
    private static final int DH_GROUP_4096_BIT_MODP = 16;
    private static final String TAG = VpnIkev2Utils.class.getSimpleName();

    static IkeSessionParams buildIkeSessionParams(Context context, Ikev2VpnProfile profile, Network network) {
        IkeIdentification localId = parseIkeIdentification(profile.getUserIdentity());
        IkeIdentification remoteId = parseIkeIdentification(profile.getServerAddr());
        IkeSessionParams.Builder ikeOptionsBuilder = new IkeSessionParams.Builder(context).setServerHostname(profile.getServerAddr()).setNetwork(network).setLocalIdentification(localId).setRemoteIdentification(remoteId);
        setIkeAuth(profile, ikeOptionsBuilder);
        for (IkeSaProposal ikeProposal : getIkeSaProposals()) {
            ikeOptionsBuilder.addSaProposal(ikeProposal);
        }
        return ikeOptionsBuilder.build();
    }

    static ChildSessionParams buildChildSessionParams(List<String> allowedAlgorithms) {
        TunnelModeChildSessionParams.Builder childOptionsBuilder = new TunnelModeChildSessionParams.Builder();
        for (ChildSaProposal childProposal : getChildSaProposals(allowedAlgorithms)) {
            childOptionsBuilder.addSaProposal(childProposal);
        }
        childOptionsBuilder.addInternalAddressRequest(OsConstants.AF_INET);
        childOptionsBuilder.addInternalAddressRequest(OsConstants.AF_INET6);
        childOptionsBuilder.addInternalDnsServerRequest(OsConstants.AF_INET);
        childOptionsBuilder.addInternalDnsServerRequest(OsConstants.AF_INET6);
        return childOptionsBuilder.build();
    }

    private static void setIkeAuth(Ikev2VpnProfile profile, IkeSessionParams.Builder builder) {
        int type = profile.getType();
        if (type == 6) {
            EapSessionConfig eapConfig = new EapSessionConfig.Builder().setEapMsChapV2Config(profile.getUsername(), profile.getPassword()).build();
            builder.setAuthEap(profile.getServerRootCaCert(), eapConfig);
        } else if (type == 7) {
            builder.setAuthPsk(profile.getPresharedKey());
        } else {
            if (type == 8) {
                builder.setAuthDigitalSignature(profile.getServerRootCaCert(), profile.getUserCert(), profile.getRsaPrivateKey());
                return;
            }
            throw new IllegalArgumentException("Unknown auth method set");
        }
    }

    private static List<IkeSaProposal> getIkeSaProposals() {
        List<IkeSaProposal> proposals = new ArrayList<>();
        IkeSaProposal.Builder normalModeBuilder = new IkeSaProposal.Builder();
        normalModeBuilder.addEncryptionAlgorithm(12, 256);
        normalModeBuilder.addEncryptionAlgorithm(12, CecMessageType.INITIATE_ARC);
        normalModeBuilder.addEncryptionAlgorithm(12, 128);
        normalModeBuilder.addIntegrityAlgorithm(14);
        normalModeBuilder.addIntegrityAlgorithm(13);
        normalModeBuilder.addIntegrityAlgorithm(12);
        normalModeBuilder.addIntegrityAlgorithm(5);
        IkeSaProposal.Builder aeadBuilder = new IkeSaProposal.Builder();
        aeadBuilder.addEncryptionAlgorithm(20, 256);
        aeadBuilder.addEncryptionAlgorithm(19, 256);
        aeadBuilder.addEncryptionAlgorithm(18, 256);
        aeadBuilder.addEncryptionAlgorithm(20, CecMessageType.INITIATE_ARC);
        aeadBuilder.addEncryptionAlgorithm(19, CecMessageType.INITIATE_ARC);
        aeadBuilder.addEncryptionAlgorithm(18, CecMessageType.INITIATE_ARC);
        aeadBuilder.addEncryptionAlgorithm(20, 128);
        aeadBuilder.addEncryptionAlgorithm(19, 128);
        aeadBuilder.addEncryptionAlgorithm(18, 128);
        for (IkeSaProposal.Builder builder : Arrays.asList(normalModeBuilder, aeadBuilder)) {
            builder.addDhGroup(16);
            builder.addDhGroup(15);
            builder.addDhGroup(14);
            builder.addPseudorandomFunction(4);
            builder.addPseudorandomFunction(2);
        }
        proposals.add(normalModeBuilder.build());
        proposals.add(aeadBuilder.build());
        return proposals;
    }

    private static List<ChildSaProposal> getChildSaProposals(List<String> allowedAlgorithms) {
        List<ChildSaProposal> proposals = new ArrayList<>();
        if (Ikev2VpnProfile.hasNormalModeAlgorithms(allowedAlgorithms)) {
            ChildSaProposal.Builder normalModeBuilder = new ChildSaProposal.Builder();
            normalModeBuilder.addEncryptionAlgorithm(12, 256);
            normalModeBuilder.addEncryptionAlgorithm(12, CecMessageType.INITIATE_ARC);
            normalModeBuilder.addEncryptionAlgorithm(12, 128);
            if (allowedAlgorithms.contains("hmac(sha512)")) {
                normalModeBuilder.addIntegrityAlgorithm(14);
            }
            if (allowedAlgorithms.contains("hmac(sha384)")) {
                normalModeBuilder.addIntegrityAlgorithm(13);
            }
            if (allowedAlgorithms.contains("hmac(sha256)")) {
                normalModeBuilder.addIntegrityAlgorithm(12);
            }
            ChildSaProposal proposal = normalModeBuilder.build();
            if (proposal.getIntegrityAlgorithms().isEmpty()) {
                Log.wtf(TAG, "Missing integrity algorithm when buildling Child SA proposal");
            } else {
                proposals.add(normalModeBuilder.build());
            }
        }
        if (Ikev2VpnProfile.hasAeadAlgorithms(allowedAlgorithms)) {
            ChildSaProposal.Builder aeadBuilder = new ChildSaProposal.Builder();
            aeadBuilder.addEncryptionAlgorithm(20, 256);
            aeadBuilder.addEncryptionAlgorithm(19, 256);
            aeadBuilder.addEncryptionAlgorithm(18, 256);
            aeadBuilder.addEncryptionAlgorithm(20, CecMessageType.INITIATE_ARC);
            aeadBuilder.addEncryptionAlgorithm(19, CecMessageType.INITIATE_ARC);
            aeadBuilder.addEncryptionAlgorithm(18, CecMessageType.INITIATE_ARC);
            aeadBuilder.addEncryptionAlgorithm(20, 128);
            aeadBuilder.addEncryptionAlgorithm(19, 128);
            aeadBuilder.addEncryptionAlgorithm(18, 128);
            proposals.add(aeadBuilder.build());
        }
        return proposals;
    }

    static class IkeSessionCallbackImpl implements IkeSessionCallback {
        private final Vpn.IkeV2VpnRunnerCallback mCallback;
        private final Network mNetwork;
        private final String mTag;

        IkeSessionCallbackImpl(String tag, Vpn.IkeV2VpnRunnerCallback callback, Network network) {
            this.mTag = tag;
            this.mCallback = callback;
            this.mNetwork = network;
        }

        @Override // android.net.ipsec.ike.IkeSessionCallback
        public void onOpened(IkeSessionConfiguration ikeSessionConfig) {
            Log.d(this.mTag, "IkeOpened for network " + this.mNetwork);
        }

        @Override // android.net.ipsec.ike.IkeSessionCallback
        public void onClosed() {
            Log.d(this.mTag, "IkeClosed for network " + this.mNetwork);
            this.mCallback.onSessionLost(this.mNetwork, null);
        }

        public void onClosedExceptionally(IkeException exception) {
            Log.d(this.mTag, "IkeClosedExceptionally for network " + this.mNetwork, exception);
            this.mCallback.onSessionLost(this.mNetwork, exception);
        }

        public void onError(IkeProtocolException exception) {
            Log.d(this.mTag, "IkeError for network " + this.mNetwork, exception);
        }
    }

    static class ChildSessionCallbackImpl implements ChildSessionCallback {
        private final Vpn.IkeV2VpnRunnerCallback mCallback;
        private final Network mNetwork;
        private final String mTag;

        ChildSessionCallbackImpl(String tag, Vpn.IkeV2VpnRunnerCallback callback, Network network) {
            this.mTag = tag;
            this.mCallback = callback;
            this.mNetwork = network;
        }

        @Override // android.net.ipsec.ike.ChildSessionCallback
        public void onOpened(ChildSessionConfiguration childConfig) {
            Log.d(this.mTag, "ChildOpened for network " + this.mNetwork);
            this.mCallback.onChildOpened(this.mNetwork, childConfig);
        }

        @Override // android.net.ipsec.ike.ChildSessionCallback
        public void onClosed() {
            Log.d(this.mTag, "ChildClosed for network " + this.mNetwork);
            this.mCallback.onSessionLost(this.mNetwork, null);
        }

        public void onClosedExceptionally(IkeException exception) {
            Log.d(this.mTag, "ChildClosedExceptionally for network " + this.mNetwork, exception);
            this.mCallback.onSessionLost(this.mNetwork, exception);
        }

        @Override // android.net.ipsec.ike.ChildSessionCallback
        public void onIpSecTransformCreated(IpSecTransform transform, int direction) {
            Log.d(this.mTag, "ChildTransformCreated; Direction: " + direction + "; network " + this.mNetwork);
            this.mCallback.onChildTransformCreated(this.mNetwork, transform, direction);
        }

        @Override // android.net.ipsec.ike.ChildSessionCallback
        public void onIpSecTransformDeleted(IpSecTransform transform, int direction) {
            Log.d(this.mTag, "ChildTransformDeleted; Direction: " + direction + "; for network " + this.mNetwork);
        }
    }

    static class Ikev2VpnNetworkCallback extends ConnectivityManager.NetworkCallback {
        private final Vpn.IkeV2VpnRunnerCallback mCallback;
        private final String mTag;

        Ikev2VpnNetworkCallback(String tag, Vpn.IkeV2VpnRunnerCallback callback) {
            this.mTag = tag;
            this.mCallback = callback;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            Log.d(this.mTag, "Starting IKEv2/IPsec session on new network: " + network);
            this.mCallback.onDefaultNetworkChanged(network);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            Log.d(this.mTag, "Tearing down; lost network: " + network);
            this.mCallback.onSessionLost(network, null);
        }
    }

    private static IkeIdentification parseIkeIdentification(String identityStr) {
        if (identityStr.contains("@")) {
            if (identityStr.startsWith("@#")) {
                String hexStr = identityStr.substring(2);
                return new IkeKeyIdIdentification(HexDump.hexStringToByteArray(hexStr));
            }
            if (identityStr.startsWith("@@")) {
                return new IkeRfc822AddrIdentification(identityStr.substring(2));
            }
            if (identityStr.startsWith("@")) {
                return new IkeFqdnIdentification(identityStr.substring(1));
            }
            return new IkeRfc822AddrIdentification(identityStr);
        }
        if (InetAddresses.isNumericAddress(identityStr)) {
            InetAddress addr = InetAddresses.parseNumericAddress(identityStr);
            if (addr instanceof Inet4Address) {
                return new IkeIpv4AddrIdentification((Inet4Address) addr);
            }
            if (addr instanceof Inet6Address) {
                return new IkeIpv6AddrIdentification((Inet6Address) addr);
            }
            throw new IllegalArgumentException("IP version not supported");
        }
        if (identityStr.contains(":")) {
            return new IkeKeyIdIdentification(identityStr.getBytes());
        }
        return new IkeFqdnIdentification(identityStr);
    }

    static Collection<RouteInfo> getRoutesFromTrafficSelectors(List<IkeTrafficSelector> trafficSelectors) {
        HashSet<RouteInfo> routes = new HashSet<>();
        for (IkeTrafficSelector selector : trafficSelectors) {
            for (IpPrefix prefix : new IpRange(selector.startingAddress, selector.endingAddress).asIpPrefixes()) {
                routes.add(new RouteInfo(prefix, null));
            }
        }
        return routes;
    }
}
