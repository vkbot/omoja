.class public final synthetic Lorg/apache/logging/log4j/message/-$$Lambda$MapMessageJsonFormatter$Sgl7ZO0ujwSAXdBIk8ANYMaB1jY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:Ljava/lang/StringBuilder;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>([ZLjava/lang/StringBuilder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/message/-$$Lambda$MapMessageJsonFormatter$Sgl7ZO0ujwSAXdBIk8ANYMaB1jY;->f$0:[Z

    iput-object p2, p0, Lorg/apache/logging/log4j/message/-$$Lambda$MapMessageJsonFormatter$Sgl7ZO0ujwSAXdBIk8ANYMaB1jY;->f$1:Ljava/lang/StringBuilder;

    iput p3, p0, Lorg/apache/logging/log4j/message/-$$Lambda$MapMessageJsonFormatter$Sgl7ZO0ujwSAXdBIk8ANYMaB1jY;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/logging/log4j/message/-$$Lambda$MapMessageJsonFormatter$Sgl7ZO0ujwSAXdBIk8ANYMaB1jY;->f$0:[Z

    iget-object v1, p0, Lorg/apache/logging/log4j/message/-$$Lambda$MapMessageJsonFormatter$Sgl7ZO0ujwSAXdBIk8ANYMaB1jY;->f$1:Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/logging/log4j/message/-$$Lambda$MapMessageJsonFormatter$Sgl7ZO0ujwSAXdBIk8ANYMaB1jY;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->lambda$formatMap$0([ZLjava/lang/StringBuilder;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
