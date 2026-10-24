.class public Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;
.super Ljava/lang/Object;
.source "CrossProfileIntentFiltersSetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter$RestrictionChangedReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_PICK_DATA:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

.field private static final ACTION_PICK_RAW:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

.field static final ACTION_SEND:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final CALL_BUTTON:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

.field private static final DIAL_DATA:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

.field private static final DIAL_MIME:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

.field private static final DIAL_RAW:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

.field private static final EMERGENCY_CALL_DATA:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

.field private static final EMERGENCY_CALL_MIME:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

.field static final FILTERS:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final GET_CONTENT:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

.field static final HOME:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MEDIA_CAPTURE:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

.field private static final MOBILE_NETWORK_SETTINGS:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

.field private static final OPEN_DOCUMENT:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

.field private static final RECOGNIZE_SPEECH:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

.field private static final SET_ALARM:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

.field private static final SMS_MMS:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

.field private static final USB_DEVICE_ATTACHED:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 52
    new-instance v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v3, "android.intent.action.CALL_EMERGENCY"

    .line 54
    invoke-virtual {v0, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    .line 55
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v5, "android.intent.category.DEFAULT"

    .line 56
    invoke-virtual {v0, v5}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v6, "android.intent.category.BROWSABLE"

    .line 57
    invoke-virtual {v0, v6}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v7, "vnd.android.cursor.item/phone"

    .line 58
    invoke-virtual {v0, v7}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v8, "vnd.android.cursor.item/phone_v2"

    .line 59
    invoke-virtual {v0, v8}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v9, "vnd.android.cursor.item/person"

    .line 60
    invoke-virtual {v0, v9}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v10, "vnd.android.cursor.dir/calls"

    .line 61
    invoke-virtual {v0, v10}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v11, "vnd.android.cursor.item/calls"

    .line 62
    invoke-virtual {v0, v11}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 63
    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->build()Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->EMERGENCY_CALL_MIME:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    .line 66
    new-instance v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 68
    invoke-virtual {v0, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 69
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 70
    invoke-virtual {v0, v5}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 71
    invoke-virtual {v0, v6}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v3, "tel"

    .line 72
    invoke-virtual {v0, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v4, "sip"

    .line 73
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v12, "voicemail"

    .line 74
    invoke-virtual {v0, v12}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 75
    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->build()Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->EMERGENCY_CALL_DATA:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    .line 78
    new-instance v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const/4 v13, 0x4

    invoke-direct {v0, v1, v13, v1}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v14, "android.intent.action.DIAL"

    .line 80
    invoke-virtual {v0, v14}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v15, "android.intent.action.VIEW"

    .line 81
    invoke-virtual {v0, v15}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 82
    invoke-virtual {v0, v5}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 83
    invoke-virtual {v0, v6}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 84
    invoke-virtual {v0, v7}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 85
    invoke-virtual {v0, v8}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 86
    invoke-virtual {v0, v9}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 87
    invoke-virtual {v0, v10}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 88
    invoke-virtual {v0, v11}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 89
    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->build()Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->DIAL_MIME:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    .line 92
    new-instance v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v13, v1}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 94
    invoke-virtual {v0, v14}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 95
    invoke-virtual {v0, v15}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 96
    invoke-virtual {v0, v5}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 97
    invoke-virtual {v0, v6}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 98
    invoke-virtual {v0, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 99
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 100
    invoke-virtual {v0, v12}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 101
    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->build()Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->DIAL_DATA:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    .line 107
    new-instance v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v13, v1}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 109
    invoke-virtual {v0, v14}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 110
    invoke-virtual {v0, v5}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 111
    invoke-virtual {v0, v6}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 112
    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->build()Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->DIAL_RAW:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    .line 115
    new-instance v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v13, v1}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v3, "android.intent.action.CALL_BUTTON"

    .line 117
    invoke-virtual {v0, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 118
    invoke-virtual {v0, v5}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 119
    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->build()Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->CALL_BUTTON:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    .line 122
    new-instance v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 124
    invoke-virtual {v0, v15}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v3, "android.intent.action.SENDTO"

    .line 125
    invoke-virtual {v0, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 126
    invoke-virtual {v0, v5}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 127
    invoke-virtual {v0, v6}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v3, "sms"

    .line 128
    invoke-virtual {v0, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v3, "smsto"

    .line 129
    invoke-virtual {v0, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v3, "mms"

    .line 130
    invoke-virtual {v0, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v3, "mmsto"

    .line 131
    invoke-virtual {v0, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 132
    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->build()Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->SMS_MMS:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    .line 135
    new-instance v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v3, "android.settings.DATA_ROAMING_SETTINGS"

    .line 137
    invoke-virtual {v0, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v3, "android.settings.NETWORK_OPERATOR_SETTINGS"

    .line 138
    invoke-virtual {v0, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 139
    invoke-virtual {v0, v5}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 140
    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->build()Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->MOBILE_NETWORK_SETTINGS:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    .line 144
    new-instance v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v3, "android.intent.action.MAIN"

    .line 146
    invoke-virtual {v0, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 147
    invoke-virtual {v0, v5}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v3, "android.intent.category.HOME"

    .line 148
    invoke-virtual {v0, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 149
    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->build()Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->HOME:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    .line 152
    new-instance v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v1, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v4, "android.intent.action.GET_CONTENT"

    .line 154
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 155
    invoke-virtual {v0, v5}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v4, "android.intent.category.OPENABLE"

    .line 156
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v6, "*/*"

    .line 157
    invoke-virtual {v0, v6}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 158
    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->build()Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->GET_CONTENT:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    .line 161
    new-instance v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v7, "android.intent.action.OPEN_DOCUMENT"

    .line 163
    invoke-virtual {v0, v7}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 164
    invoke-virtual {v0, v5}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 165
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 166
    invoke-virtual {v0, v6}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 167
    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->build()Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->OPEN_DOCUMENT:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    .line 170
    new-instance v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v4, "android.intent.action.PICK"

    .line 172
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 173
    invoke-virtual {v0, v5}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 174
    invoke-virtual {v0, v6}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 175
    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->build()Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->ACTION_PICK_DATA:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    .line 178
    new-instance v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 180
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 181
    invoke-virtual {v0, v5}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 182
    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->build()Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->ACTION_PICK_RAW:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    .line 185
    new-instance v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v1}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v4, "android.speech.action.RECOGNIZE_SPEECH"

    .line 187
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 188
    invoke-virtual {v0, v5}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 189
    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->build()Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->RECOGNIZE_SPEECH:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    .line 192
    new-instance v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    .line 194
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v4, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 195
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v4, "android.media.action.VIDEO_CAPTURE"

    .line 196
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v4, "android.provider.MediaStore.RECORD_SOUND"

    .line 197
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v4, "android.media.action.STILL_IMAGE_CAMERA"

    .line 198
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v4, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 199
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v4, "android.media.action.VIDEO_CAMERA"

    .line 200
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 201
    invoke-virtual {v0, v5}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 202
    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->build()Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->MEDIA_CAPTURE:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    .line 205
    new-instance v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v1}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v4, "android.intent.action.SET_ALARM"

    .line 207
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v4, "android.intent.action.SHOW_ALARMS"

    .line 208
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v4, "android.intent.action.SET_TIMER"

    .line 209
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 210
    invoke-virtual {v0, v5}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 211
    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->build()Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->SET_ALARM:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    .line 217
    new-instance v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    invoke-direct {v0, v3, v1, v3}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v4, "android.intent.action.SEND"

    .line 219
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    .line 220
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 221
    invoke-virtual {v0, v5}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 222
    invoke-virtual {v0, v6}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 223
    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->build()Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->ACTION_SEND:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    .line 226
    new-instance v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    invoke-direct {v0, v3, v1, v1}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v4, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 228
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    const-string v4, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    .line 229
    invoke-virtual {v0, v4}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 230
    invoke-virtual {v0, v5}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;

    .line 231
    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter$Builder;->build()Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->USB_DEVICE_ATTACHED:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    const/16 v4, 0x12

    new-array v4, v4, [Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    .line 234
    sget-object v5, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->EMERGENCY_CALL_MIME:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    aput-object v5, v4, v1

    sget-object v1, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->EMERGENCY_CALL_DATA:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    aput-object v1, v4, v3

    sget-object v1, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->DIAL_MIME:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    aput-object v1, v4, v2

    sget-object v1, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->DIAL_DATA:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    const/4 v2, 0x3

    aput-object v1, v4, v2

    sget-object v1, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->DIAL_RAW:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    aput-object v1, v4, v13

    sget-object v1, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->CALL_BUTTON:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    const/4 v2, 0x5

    aput-object v1, v4, v2

    sget-object v1, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->SMS_MMS:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    const/4 v2, 0x6

    aput-object v1, v4, v2

    sget-object v1, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->SET_ALARM:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    const/4 v2, 0x7

    aput-object v1, v4, v2

    sget-object v1, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->MEDIA_CAPTURE:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    const/16 v2, 0x8

    aput-object v1, v4, v2

    sget-object v1, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->RECOGNIZE_SPEECH:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    const/16 v2, 0x9

    aput-object v1, v4, v2

    sget-object v1, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->ACTION_PICK_RAW:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    const/16 v2, 0xa

    aput-object v1, v4, v2

    sget-object v1, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->ACTION_PICK_DATA:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    const/16 v2, 0xb

    aput-object v1, v4, v2

    sget-object v1, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->OPEN_DOCUMENT:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    const/16 v2, 0xc

    aput-object v1, v4, v2

    sget-object v1, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->GET_CONTENT:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    const/16 v2, 0xd

    aput-object v1, v4, v2

    const/16 v1, 0xe

    aput-object v0, v4, v1

    sget-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->ACTION_SEND:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    const/16 v1, 0xf

    aput-object v0, v4, v1

    sget-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->HOME:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    const/16 v1, 0x10

    aput-object v0, v4, v1

    sget-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->MOBILE_NETWORK_SETTINGS:Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    const/16 v1, 0x11

    aput-object v0, v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->FILTERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "user"

    .line 287
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 286
    invoke-direct {p0, v0, p1}, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;-><init>(Landroid/content/pm/PackageManager;Landroid/os/UserManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/pm/PackageManager;Landroid/os/UserManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 293
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public resetFilters(I)V
    .locals 4

    .line 326
    iget-object v0, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 327
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->clearCrossProfileIntentFilters(I)V

    .line 335
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 336
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 339
    :cond_1
    iget-object v2, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->clearCrossProfileIntentFilters(I)V

    .line 340
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v1}, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->setFilters(II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFilters(II)V
    .locals 5

    const-string v0, "Setting cross-profile intent filters"

    .line 301
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->mUserManager:Landroid/os/UserManager;

    .line 304
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "no_sharing_into_profile"

    .line 302
    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    .line 305
    sget-object v1, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->FILTERS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;

    if-eqz v0, :cond_0

    .line 308
    iget-boolean v3, v2, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;->letsPersonalDataIntoProfile:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    iget v3, v2, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;->direction:I

    if-nez v3, :cond_1

    .line 312
    iget-object v3, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v2, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;->filter:Landroid/content/IntentFilter;

    iget v2, v2, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;->flags:I

    invoke-virtual {v3, v4, p2, p1, v2}, Landroid/content/pm/PackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v3, p0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v2, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;->filter:Landroid/content/IntentFilter;

    iget v2, v2, Lcom/android/managedprovisioning/task/CrossProfileIntentFilter;->flags:I

    invoke-virtual {v3, v4, p1, p2, v2}, Landroid/content/pm/PackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V

    goto :goto_0

    :cond_2
    return-void
.end method
