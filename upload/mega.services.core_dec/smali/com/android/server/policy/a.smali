.class public final synthetic Lcom/android/server/policy/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/server/policy/MegaPhoneWindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/MegaPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/a;->a:Lcom/android/server/policy/MegaPhoneWindowManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/a;->a:Lcom/android/server/policy/MegaPhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/MegaPhoneWindowManager;->h(Lcom/android/server/policy/MegaPhoneWindowManager;)V

    return-void
.end method
