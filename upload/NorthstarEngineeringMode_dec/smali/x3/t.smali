.class public abstract Lx3/t;
.super Lx3/c;
.source "SourceFile"

# interfaces
.implements Lv3/h1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lx3/t<",
        "TS;>;>",
        "Lx3/c<",
        "TS;>;",
        "Lv3/h1;"
    }
.end annotation


# instance fields
.field private volatile cleanedAndPointers:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lx3/t;

    const-string v1, "cleanedAndPointers"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method
