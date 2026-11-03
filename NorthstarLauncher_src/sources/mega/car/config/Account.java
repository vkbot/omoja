package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 16, permission = "mega.car.permission.ACCOUNT")
public interface Account {

    @PropertyDefine(publish = "Account/AccountFaceId/Set", subscribe = "Account/AccountFaceId", type = Integer.class)
    public static final int ID_ACCOUNT_FACE_ID = 268435458;

    @PropertyDefine(publish = "Account/AccountFaceManager/Set", subscribe = "Account/AccountFaceManager", type = Integer.class)
    public static final int ID_ACCOUNT_FACE_MANAGER = 268435459;

    @PropertyDefine(publish = "Account/AccountFaceManagerId/Set", subscribe = "Account/AccountFaceManagerId", type = Integer.class)
    public static final int ID_ACCOUNT_FACE_MANAGER_ID = 268435460;

    @PropertyDefine(publish = "Account/AccountId/Set", subscribe = "Account/AccountId", type = Integer.class)
    public static final int ID_ACCOUNT_ID = 268435457;

    @PropertyDefine(changeMode = 2, publish = "Account/BluetoothUserId/Set", subscribe = "Account/BluetoothUserId", type = String.class)
    public static final int ID_BLUETOOTH_USER_ID = 268435464;

    @PropertyDefine(publish = "Account/FaceAuthen/Set", subscribe = "Account/FaceAuthen", type = Integer.class)
    public static final int ID_FACE_AUTHENTICATE = 268435461;

    @PropertyDefine(publish = "Account/FaceAuthenNotice/Set", subscribe = "Account/FaceAuthenNotice", type = Integer.class)
    public static final int ID_FACE_AUTHEN_NOTICE = 268435463;

    @PropertyDefine(publish = "Account/FaceDataId/Set", subscribe = "Account/FaceDataId", type = Integer.class)
    public static final int ID_FACE_DATA_ID = 268435462;
    public static final int MGR_ID = 16;
}
