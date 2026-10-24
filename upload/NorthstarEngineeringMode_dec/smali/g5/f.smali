.class public final synthetic Lg5/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg5/f;->a:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lg5/f;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lorg/apache/poi/poifs/nio/CleanerUtil;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lg5/g;->c:Ljava/lang/RuntimePermission;

    invoke-static {p0}, Ljava/security/AccessController;->checkPermission(Ljava/security/Permission;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
