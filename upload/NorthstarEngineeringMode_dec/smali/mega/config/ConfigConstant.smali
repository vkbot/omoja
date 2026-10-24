.class public final Lmega/config/ConfigConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "config"

.field public static final CALL_METHOD_GENERATION_INDEX_KEY:Ljava/lang/String; = "_generation_index"

.field public static final CALL_METHOD_GENERATION_KEY:Ljava/lang/String; = "_generation"

.field public static final CALL_METHOD_GET:Ljava/lang/String; = "get"

.field public static final CALL_METHOD_PUT:Ljava/lang/String; = "put"

.field public static final CALL_METHOD_TRACK_GENERATION_KEY:Ljava/lang/String; = "_track_generation"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DOMAIN_KEY:Ljava/lang/String; = "_domain"

.field public static final EXTRA_KEY:Ljava/lang/String; = "extra"

.field public static final NAME_KEY:Ljava/lang/String; = "name"

.field public static final VALUE_KEY:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://config"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmega/config/ConfigConstant;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
