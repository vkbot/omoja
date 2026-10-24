.class public final synthetic Lm5/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lm5/o0$a;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lm5/o0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm5/k0;->a:Lm5/o0$a;

    iput-object p1, p0, Lm5/k0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lm5/o0$a;

    iget-object p1, p0, Lm5/k0;->b:Ljava/lang/String;

    iget-object p0, p0, Lm5/k0;->a:Lm5/o0$a;

    invoke-static {p1, p0}, Lm5/o0;->y(Ljava/lang/String;Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method
