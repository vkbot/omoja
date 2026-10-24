.class public final Lt/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/x;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/x<",
        "[B>;"
    }
.end annotation


# instance fields
.field public final c:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lt/b;->c:[B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Argument must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "[B>;"
        }
    .end annotation

    const-class p0, [B

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lt/b;->c:[B

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Lt/b;->c:[B

    array-length p0, p0

    return p0
.end method

.method public final recycle()V
    .locals 0

    return-void
.end method
