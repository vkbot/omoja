.class public final synthetic Lmega/config/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lmega/config/AbstractConfig$NameValueCache;


# direct methods
.method public synthetic constructor <init>(Lmega/config/AbstractConfig$NameValueCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/config/a;->c:Lmega/config/AbstractConfig$NameValueCache;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lmega/config/a;->c:Lmega/config/AbstractConfig$NameValueCache;

    invoke-static {p0}, Lmega/config/AbstractConfig$NameValueCache;->a(Lmega/config/AbstractConfig$NameValueCache;)V

    return-void
.end method
