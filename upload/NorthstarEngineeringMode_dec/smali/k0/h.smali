.class public final Lk0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/h$b;
    }
.end annotation


# static fields
.field public static final b:Lk0/h$a;


# instance fields
.field public final a:Lk0/h$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk0/h$a;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lk0/h;->b:Lk0/h$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lk0/h;->b:Lk0/h$a;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk0/h$b;

    iput-object v0, p0, Lk0/h;->a:Lk0/h$b;

    return-void
.end method
