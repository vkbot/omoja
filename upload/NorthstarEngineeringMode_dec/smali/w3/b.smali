.class public final Lw3/b;
.super Lh3/a;
.source "SourceFile"

# interfaces
.implements Lv3/x;


# instance fields
.field private volatile _preHandler:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lv3/x$a;->c:Lv3/x$a;

    invoke-direct {p0, v0}, Lh3/a;-><init>(Lh3/f$c;)V

    iput-object p0, p0, Lw3/b;->_preHandler:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public t(Lh3/f;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
