.class public final Lo2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo2/d;


# instance fields
.field public final synthetic a:I

.field public final b:Lk2/l;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lk2/a;Lk2/l;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo2/c;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lo2/c;->b:Lk2/l;

    return-void
.end method

.method public constructor <init>(Lkotlin/text/c;Lk2/l;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo2/c;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lo2/c;->b:Lk2/l;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, Lo2/c;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lo2/a;

    invoke-direct {v0, p0}, Lo2/a;-><init>(Lo2/c;)V

    return-object v0

    :goto_0
    new-instance v0, Lo2/h;

    invoke-direct {v0, p0}, Lo2/h;-><init>(Lo2/c;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
