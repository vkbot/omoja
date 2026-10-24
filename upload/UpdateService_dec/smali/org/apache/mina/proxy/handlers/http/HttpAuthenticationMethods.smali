.class public final enum Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;
.super Ljava/lang/Enum;
.source "HttpAuthenticationMethods.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

.field public static final enum BASIC:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

.field public static final enum DIGEST:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

.field public static final enum NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

.field public static final enum NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    new-instance v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    const-string v1, "NO_AUTH"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    .line 40
    new-instance v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    const-string v1, "BASIC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->BASIC:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    .line 43
    new-instance v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    const-string v1, "NTLM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    .line 46
    new-instance v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    const-string v1, "DIGEST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->DIGEST:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    .line 35
    new-array v1, v6, [Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    sget-object v6, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    aput-object v6, v1, v2

    sget-object v2, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->BASIC:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->$VALUES:[Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    .line 52
    return-void
.end method

.method public static getNewHandler(ILorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
    .locals 1
    .param p0, "method"    # I
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 83
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->BASIC:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    iget v0, v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    if-ne p0, v0, :cond_0

    .line 84
    new-instance v0, Lorg/apache/mina/proxy/handlers/http/basic/HttpBasicAuthLogicHandler;

    invoke-direct {v0, p1}, Lorg/apache/mina/proxy/handlers/http/basic/HttpBasicAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    return-object v0

    .line 85
    :cond_0
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->DIGEST:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    iget v0, v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    if-ne p0, v0, :cond_1

    .line 86
    new-instance v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;

    invoke-direct {v0, p1}, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    return-object v0

    .line 87
    :cond_1
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    iget v0, v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    if-ne p0, v0, :cond_2

    .line 88
    new-instance v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;

    invoke-direct {v0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    return-object v0

    .line 89
    :cond_2
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    iget v0, v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    if-ne p0, v0, :cond_3

    .line 90
    new-instance v0, Lorg/apache/mina/proxy/handlers/http/basic/HttpNoAuthLogicHandler;

    invoke-direct {v0, p1}, Lorg/apache/mina/proxy/handlers/http/basic/HttpNoAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    return-object v0

    .line 92
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    return-object v0
.end method

.method public static values()[Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;
    .locals 1

    .line 35
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->$VALUES:[Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v0}, [Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    return v0
.end method

.method public getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
    .locals 1
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 69
    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    invoke-static {v0, p1}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(ILorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v0

    return-object v0
.end method
