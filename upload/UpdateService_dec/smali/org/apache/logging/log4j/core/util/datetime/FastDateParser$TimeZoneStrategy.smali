.class Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy;
.super Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$PatternStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeZoneStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy$TzInfo;
    }
.end annotation


# static fields
.field private static final GMT_OPTION:Ljava/lang/String; = "GMT[+-]\\d{1,2}:\\d{2}"

.field private static final ID:I = 0x0

.field private static final RFC_822_TIME_ZONE:Ljava/lang/String; = "[+-]\\d{4}"


# instance fields
.field private final locale:Ljava/util/Locale;

.field private final tzNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy$TzInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Locale;)V
    .locals 14
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "locale"
        }
    .end annotation

    .line 838
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$PatternStrategy;-><init>(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$1;)V

    .line 817
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    .line 839
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy;->locale:Ljava/util/Locale;

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 842
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "((?iu)[+-]\\d{4}|GMT[+-]\\d{1,2}:\\d{2}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    new-instance v1, Ljava/util/TreeSet;

    invoke-static {}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->access$800()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 846
    .local v1, "sorted":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v2

    .line 847
    .local v2, "zones":[[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    .line 849
    .local v6, "zoneNames":[Ljava/lang/String;
    aget-object v7, v6, v4

    .line 850
    .local v7, "tzId":Ljava/lang/String;
    const-string v8, "GMT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 851
    goto :goto_3

    .line 853
    :cond_0
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 856
    .local v8, "tz":Ljava/util/TimeZone;
    new-instance v9, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy$TzInfo;

    invoke-direct {v9, v8, v4}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy$TzInfo;-><init>(Ljava/util/TimeZone;Z)V

    .line 857
    .local v9, "standard":Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy$TzInfo;
    move-object v10, v9

    .line 858
    .local v10, "tzInfo":Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy$TzInfo;
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_1
    array-length v12, v6

    if-ge v11, v12, :cond_4

    .line 859
    const/4 v12, 0x3

    if-eq v11, v12, :cond_2

    const/4 v12, 0x5

    if-eq v11, v12, :cond_1

    goto :goto_2

    .line 865
    :cond_1
    move-object v10, v9

    goto :goto_2

    .line 862
    :cond_2
    new-instance v12, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy$TzInfo;

    const/4 v13, 0x1

    invoke-direct {v12, v8, v13}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy$TzInfo;-><init>(Ljava/util/TimeZone;Z)V

    move-object v10, v12

    .line 863
    nop

    .line 868
    :goto_2
    aget-object v12, v6, v11

    if-eqz v12, :cond_3

    .line 869
    aget-object v12, v6, v11

    invoke-virtual {v12, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 872
    .local v12, "key":Ljava/lang/String;
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 873
    iget-object v13, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    invoke-interface {v13, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    .end local v12    # "key":Ljava/lang/String;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 847
    .end local v6    # "zoneNames":[Ljava/lang/String;
    .end local v7    # "tzId":Ljava/lang/String;
    .end local v8    # "tz":Ljava/util/TimeZone;
    .end local v9    # "standard":Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy$TzInfo;
    .end local v10    # "tzInfo":Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy$TzInfo;
    .end local v11    # "i":I
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 880
    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 881
    .local v4, "zoneName":Ljava/lang/String;
    const/16 v5, 0x7c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v4}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->access$900(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    .end local v4    # "zoneName":Ljava/lang/String;
    goto :goto_4

    .line 883
    :cond_6
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy;->createPattern(Ljava/lang/StringBuilder;)V

    .line 885
    return-void
.end method


# virtual methods
.method setCalendar(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 8
    .param p1, "parser"    # Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;
    .param p2, "cal"    # Ljava/util/Calendar;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "parser",
            "cal",
            "value"
        }
    .end annotation

    .line 892
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_2

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 895
    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v5, "GMT"

    move-object v2, p3

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 897
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 898
    .end local v0    # "tz":Ljava/util/TimeZone;
    goto :goto_1

    .line 899
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy;->locale:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy$TzInfo;

    .line 900
    .local v0, "tzInfo":Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy$TzInfo;
    const/16 v1, 0x10

    iget v2, v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy$TzInfo;->dstOffset:I

    invoke-virtual {p2, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 901
    const/16 v1, 0xf

    iget-object v2, v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy$TzInfo;->zone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 893
    .end local v0    # "tzInfo":Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy$TzInfo;
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 894
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 895
    .end local v0    # "tz":Ljava/util/TimeZone;
    nop

    .line 903
    :goto_1
    return-void
.end method
