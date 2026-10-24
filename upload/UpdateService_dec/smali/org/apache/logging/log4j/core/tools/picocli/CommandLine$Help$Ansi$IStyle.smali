.class public interface abstract Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStyle"
.end annotation


# static fields
.field public static final CSI:Ljava/lang/String; = "\u001b["


# virtual methods
.method public abstract off()Ljava/lang/String;
.end method

.method public abstract on()Ljava/lang/String;
.end method
