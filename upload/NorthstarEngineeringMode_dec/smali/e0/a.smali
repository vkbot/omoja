.class public final Le0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/f;


# static fields
.field public static final b:Le0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le0/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le0/a;->b:Le0/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "EmptySignature"

    return-object p0
.end method
