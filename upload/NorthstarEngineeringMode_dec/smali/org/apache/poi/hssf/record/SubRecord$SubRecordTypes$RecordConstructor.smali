.class public interface abstract Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecordConstructor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/apache/poi/hssf/record/SubRecord;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract apply(Lorg/apache/poi/util/LittleEndianInput;II)Lorg/apache/poi/hssf/record/SubRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/LittleEndianInput;",
            "II)TT;"
        }
    .end annotation
.end method
