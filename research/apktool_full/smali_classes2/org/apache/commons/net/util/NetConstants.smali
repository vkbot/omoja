.class public Lorg/apache/commons/net/util/NetConstants;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final EMPTY_BTYE_ARRAY:[B

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final EMPTY_X509_CERTIFICATE_ARRAY:[Ljava/security/cert/X509Certificate;

.field public static final EOS:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 3
    .line 4
    sput-object v1, Lorg/apache/commons/net/util/NetConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 5
    .line 6
    new-array v1, v0, [B

    .line 7
    .line 8
    sput-object v1, Lorg/apache/commons/net/util/NetConstants;->EMPTY_BTYE_ARRAY:[B

    .line 9
    .line 10
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 11
    .line 12
    sput-object v0, Lorg/apache/commons/net/util/NetConstants;->EMPTY_X509_CERTIFICATE_ARRAY:[Ljava/security/cert/X509Certificate;

    .line 13
    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
