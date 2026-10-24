.class public abstract Lv3/s0;
.super Lv3/w;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "baseKey"

    sget-object v1, Lv3/w;->r:Lv3/w$a;

    invoke-static {v1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv3/w;-><init>()V

    return-void
.end method
