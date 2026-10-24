.class public final synthetic Lm5/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lm5/y;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(ILm5/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm5/o;->a:Lm5/y;

    iput p1, p0, Lm5/o;->b:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lm5/o;->a:Lm5/y;

    iget p0, p0, Lm5/o;->b:I

    invoke-virtual {v1, p0, v0}, Lm5/y;->R1(ILjavax/xml/namespace/QName;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
