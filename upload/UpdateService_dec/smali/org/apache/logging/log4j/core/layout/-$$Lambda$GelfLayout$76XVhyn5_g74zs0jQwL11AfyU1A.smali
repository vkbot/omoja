.class public final synthetic Lorg/apache/logging/log4j/core/layout/-$$Lambda$GelfLayout$76XVhyn5_g74zs0jQwL11AfyU1A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/logging/log4j/util/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/logging/log4j/core/layout/GelfLayout;

.field public final synthetic f$1:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/logging/log4j/core/layout/GelfLayout;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/-$$Lambda$GelfLayout$76XVhyn5_g74zs0jQwL11AfyU1A;->f$0:Lorg/apache/logging/log4j/core/layout/GelfLayout;

    iput-object p2, p0, Lorg/apache/logging/log4j/core/layout/-$$Lambda$GelfLayout$76XVhyn5_g74zs0jQwL11AfyU1A;->f$1:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/-$$Lambda$GelfLayout$76XVhyn5_g74zs0jQwL11AfyU1A;->f$0:Lorg/apache/logging/log4j/core/layout/GelfLayout;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/-$$Lambda$GelfLayout$76XVhyn5_g74zs0jQwL11AfyU1A;->f$1:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->lambda$toText$0$GelfLayout(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
