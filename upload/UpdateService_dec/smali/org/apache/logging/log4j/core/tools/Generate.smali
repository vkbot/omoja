.class public final Lorg/apache/logging/log4j/core/tools/Generate;
.super Ljava/lang/Object;
.source "Generate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;,
        Lorg/apache/logging/log4j/core/tools/Generate$ExtendedLogger;,
        Lorg/apache/logging/log4j/core/tools/Generate$CustomLogger;,
        Lorg/apache/logging/log4j/core/tools/Generate$Type;
    }
.end annotation


# static fields
.field static final FACTORY_METHODS:Ljava/lang/String; = "%n    /**%n     * Returns a custom Logger with the name of the calling class.%n     * %n     * @return The custom Logger for the calling class.%n     */%n    public static CLASSNAME create() {%n        final Logger wrapped = LogManager.getLogger();%n        return new CLASSNAME(wrapped);%n    }%n%n    /**%n     * Returns a custom Logger using the fully qualified name of the Class as%n     * the Logger name.%n     * %n     * @param loggerName The Class whose name should be used as the Logger name.%n     *            If null it will default to the calling class.%n     * @return The custom Logger.%n     */%n    public static CLASSNAME create(final Class<?> loggerName) {%n        final Logger wrapped = LogManager.getLogger(loggerName);%n        return new CLASSNAME(wrapped);%n    }%n%n    /**%n     * Returns a custom Logger using the fully qualified name of the Class as%n     * the Logger name.%n     * %n     * @param loggerName The Class whose name should be used as the Logger name.%n     *            If null it will default to the calling class.%n     * @param messageFactory The message factory is used only when creating a%n     *            logger, subsequent use does not change the logger but will log%n     *            a warning if mismatched.%n     * @return The custom Logger.%n     */%n    public static CLASSNAME create(final Class<?> loggerName, final MessageFactory messageFactory) {%n        final Logger wrapped = LogManager.getLogger(loggerName, messageFactory);%n        return new CLASSNAME(wrapped);%n    }%n%n    /**%n     * Returns a custom Logger using the fully qualified class name of the value%n     * as the Logger name.%n     * %n     * @param value The value whose class name should be used as the Logger%n     *            name. If null the name of the calling class will be used as%n     *            the logger name.%n     * @return The custom Logger.%n     */%n    public static CLASSNAME create(final Object value) {%n        final Logger wrapped = LogManager.getLogger(value);%n        return new CLASSNAME(wrapped);%n    }%n%n    /**%n     * Returns a custom Logger using the fully qualified class name of the value%n     * as the Logger name.%n     * %n     * @param value The value whose class name should be used as the Logger%n     *            name. If null the name of the calling class will be used as%n     *            the logger name.%n     * @param messageFactory The message factory is used only when creating a%n     *            logger, subsequent use does not change the logger but will log%n     *            a warning if mismatched.%n     * @return The custom Logger.%n     */%n    public static CLASSNAME create(final Object value, final MessageFactory messageFactory) {%n        final Logger wrapped = LogManager.getLogger(value, messageFactory);%n        return new CLASSNAME(wrapped);%n    }%n%n    /**%n     * Returns a custom Logger with the specified name.%n     * %n     * @param name The logger name. If null the name of the calling class will%n     *            be used.%n     * @return The custom Logger.%n     */%n    public static CLASSNAME create(final String name) {%n        final Logger wrapped = LogManager.getLogger(name);%n        return new CLASSNAME(wrapped);%n    }%n%n    /**%n     * Returns a custom Logger with the specified name.%n     * %n     * @param name The logger name. If null the name of the calling class will%n     *            be used.%n     * @param messageFactory The message factory is used only when creating a%n     *            logger, subsequent use does not change the logger but will log%n     *            a warning if mismatched.%n     * @return The custom Logger.%n     */%n    public static CLASSNAME create(final String name, final MessageFactory messageFactory) {%n        final Logger wrapped = LogManager.getLogger(name, messageFactory);%n        return new CLASSNAME(wrapped);%n    }%n"

.field static final FQCN_FIELD:Ljava/lang/String; = "    private static final String FQCN = %s.class.getName();%n"

.field static final LEVEL_FIELD:Ljava/lang/String; = "    private static final Level %s = Level.forName(\"%s\", %d);%n"

.field static final METHODS:Ljava/lang/String; = "%n    /**%n     * Logs a message with the specific Marker at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param msg the message string to be logged%n     */%n    public void methodName(final Marker marker, final Message msg) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, msg, (Throwable) null);%n    }%n%n    /**%n     * Logs a message with the specific Marker at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param msg the message string to be logged%n     * @param t A Throwable or null.%n     */%n    public void methodName(final Marker marker, final Message msg, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, msg, t);%n    }%n%n    /**%n     * Logs a message object with the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message object to log.%n     */%n    public void methodName(final Marker marker, final Object message) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, (Throwable) null);%n    }%n%n    /**%n     * Logs a message CharSequence with the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message CharSequence to log.%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final CharSequence message) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, (Throwable) null);%n    }%n%n    /**%n     * Logs a message at the {@code CUSTOM_LEVEL} level including the stack trace of%n     * the {@link Throwable} {@code t} passed as parameter.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log.%n     * @param t the exception to log, including its stack trace.%n     */%n    public void methodName(final Marker marker, final Object message, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, t);%n    }%n%n    /**%n     * Logs a message at the {@code CUSTOM_LEVEL} level including the stack trace of%n     * the {@link Throwable} {@code t} passed as parameter.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the CharSequence to log.%n     * @param t the exception to log, including its stack trace.%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final CharSequence message, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, t);%n    }%n%n    /**%n     * Logs a message object with the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message object to log.%n     */%n    public void methodName(final Marker marker, final String message) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, (Throwable) null);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param params parameters to the message.%n     * @see #getMessageFactory()%n     */%n    public void methodName(final Marker marker, final String message, final Object... params) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, params);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0, final Object p1) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0, p1);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0, final Object p1, final Object p2) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0, p1, p2);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0, p1, p2, p3);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0, p1, p2, p3, p4);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0, p1, p2, p3, p4, p5);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @param p6 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5, final Object p6) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0, p1, p2, p3, p4, p5, p6);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @param p6 parameter to the message.%n     * @param p7 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5, final Object p6,%n            final Object p7) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0, p1, p2, p3, p4, p5, p6, p7);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @param p6 parameter to the message.%n     * @param p7 parameter to the message.%n     * @param p8 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5, final Object p6,%n            final Object p7, final Object p8) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @param p6 parameter to the message.%n     * @param p7 parameter to the message.%n     * @param p8 parameter to the message.%n     * @param p9 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5, final Object p6,%n            final Object p7, final Object p8, final Object p9) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);%n    }%n%n    /**%n     * Logs a message at the {@code CUSTOM_LEVEL} level including the stack trace of%n     * the {@link Throwable} {@code t} passed as parameter.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log.%n     * @param t the exception to log, including its stack trace.%n     */%n    public void methodName(final Marker marker, final String message, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, t);%n    }%n%n    /**%n     * Logs the specified Message at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param msg the message string to be logged%n     */%n    public void methodName(final Message msg) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, msg, (Throwable) null);%n    }%n%n    /**%n     * Logs the specified Message at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param msg the message string to be logged%n     * @param t A Throwable or null.%n     */%n    public void methodName(final Message msg, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, msg, t);%n    }%n%n    /**%n     * Logs a message object with the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message object to log.%n     */%n    public void methodName(final Object message) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, (Throwable) null);%n    }%n%n    /**%n     * Logs a message at the {@code CUSTOM_LEVEL} level including the stack trace of%n     * the {@link Throwable} {@code t} passed as parameter.%n     * %n     * @param message the message to log.%n     * @param t the exception to log, including its stack trace.%n     */%n    public void methodName(final Object message, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, t);%n    }%n%n    /**%n     * Logs a message CharSequence with the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message CharSequence to log.%n     * @since Log4j-2.6%n     */%n    public void methodName(final CharSequence message) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, (Throwable) null);%n    }%n%n    /**%n     * Logs a CharSequence at the {@code CUSTOM_LEVEL} level including the stack trace of%n     * the {@link Throwable} {@code t} passed as parameter.%n     * %n     * @param message the CharSequence to log.%n     * @param t the exception to log, including its stack trace.%n     * @since Log4j-2.6%n     */%n    public void methodName(final CharSequence message, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, t);%n    }%n%n    /**%n     * Logs a message object with the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message object to log.%n     */%n    public void methodName(final String message) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, (Throwable) null);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param params parameters to the message.%n     * @see #getMessageFactory()%n     */%n    public void methodName(final String message, final Object... params) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, params);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0, final Object p1) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0, p1);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0, final Object p1, final Object p2) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0, p1, p2);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0, p1, p2, p3);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0, p1, p2, p3, p4);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0, p1, p2, p3, p4, p5);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @param p6 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5, final Object p6) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0, p1, p2, p3, p4, p5, p6);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @param p6 parameter to the message.%n     * @param p7 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5, final Object p6,%n            final Object p7) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0, p1, p2, p3, p4, p5, p6, p7);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @param p6 parameter to the message.%n     * @param p7 parameter to the message.%n     * @param p8 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5, final Object p6,%n            final Object p7, final Object p8) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0, p1, p2, p3, p4, p5, p6, p7, p8);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @param p6 parameter to the message.%n     * @param p7 parameter to the message.%n     * @param p8 parameter to the message.%n     * @param p9 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5, final Object p6,%n            final Object p7, final Object p8, final Object p9) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);%n    }%n%n    /**%n     * Logs a message at the {@code CUSTOM_LEVEL} level including the stack trace of%n     * the {@link Throwable} {@code t} passed as parameter.%n     * %n     * @param message the message to log.%n     * @param t the exception to log, including its stack trace.%n     */%n    public void methodName(final String message, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, t);%n    }%n%n    /**%n     * Logs a message which is only to be constructed if the logging level is the {@code CUSTOM_LEVEL}level.%n     *%n     * @param msgSupplier A function, which when called, produces the desired log message;%n     *            the format depends on the message factory.%n     * @since Log4j-2.4%n     */%n    public void methodName(final Supplier<?> msgSupplier) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, msgSupplier, (Throwable) null);%n    }%n%n    /**%n     * Logs a message (only to be constructed if the logging level is the {@code CUSTOM_LEVEL}%n     * level) including the stack trace of the {@link Throwable} <code>t</code> passed as parameter.%n     *%n     * @param msgSupplier A function, which when called, produces the desired log message;%n     *            the format depends on the message factory.%n     * @param t the exception to log, including its stack trace.%n     * @since Log4j-2.4%n     */%n    public void methodName(final Supplier<?> msgSupplier, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, msgSupplier, t);%n    }%n%n    /**%n     * Logs a message which is only to be constructed if the logging level is the%n     * {@code CUSTOM_LEVEL} level with the specified Marker.%n     *%n     * @param marker the marker data specific to this log statement%n     * @param msgSupplier A function, which when called, produces the desired log message;%n     *            the format depends on the message factory.%n     * @since Log4j-2.4%n     */%n    public void methodName(final Marker marker, final Supplier<?> msgSupplier) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, msgSupplier, (Throwable) null);%n    }%n%n    /**%n     * Logs a message with parameters which are only to be constructed if the logging level is the%n     * {@code CUSTOM_LEVEL} level.%n     *%n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param paramSuppliers An array of functions, which when called, produce the desired log message parameters.%n     * @since Log4j-2.4%n     */%n    public void methodName(final Marker marker, final String message, final Supplier<?>... paramSuppliers) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, paramSuppliers);%n    }%n%n    /**%n     * Logs a message (only to be constructed if the logging level is the {@code CUSTOM_LEVEL}%n     * level) with the specified Marker and including the stack trace of the {@link Throwable}%n     * <code>t</code> passed as parameter.%n     *%n     * @param marker the marker data specific to this log statement%n     * @param msgSupplier A function, which when called, produces the desired log message;%n     *            the format depends on the message factory.%n     * @param t A Throwable or null.%n     * @since Log4j-2.4%n     */%n    public void methodName(final Marker marker, final Supplier<?> msgSupplier, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, msgSupplier, t);%n    }%n%n    /**%n     * Logs a message with parameters which are only to be constructed if the logging level is%n     * the {@code CUSTOM_LEVEL} level.%n     *%n     * @param message the message to log; the format depends on the message factory.%n     * @param paramSuppliers An array of functions, which when called, produce the desired log message parameters.%n     * @since Log4j-2.4%n     */%n    public void methodName(final String message, final Supplier<?>... paramSuppliers) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, paramSuppliers);%n    }%n%n    /**%n     * Logs a message which is only to be constructed if the logging level is the%n     * {@code CUSTOM_LEVEL} level with the specified Marker. The {@code MessageSupplier} may or may%n     * not use the {@link MessageFactory} to construct the {@code Message}.%n     *%n     * @param marker the marker data specific to this log statement%n     * @param msgSupplier A function, which when called, produces the desired log message.%n     * @since Log4j-2.4%n     */%n    public void methodName(final Marker marker, final MessageSupplier msgSupplier) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, msgSupplier, (Throwable) null);%n    }%n%n    /**%n     * Logs a message (only to be constructed if the logging level is the {@code CUSTOM_LEVEL}%n     * level) with the specified Marker and including the stack trace of the {@link Throwable}%n     * <code>t</code> passed as parameter. The {@code MessageSupplier} may or may not use the%n     * {@link MessageFactory} to construct the {@code Message}.%n     *%n     * @param marker the marker data specific to this log statement%n     * @param msgSupplier A function, which when called, produces the desired log message.%n     * @param t A Throwable or null.%n     * @since Log4j-2.4%n     */%n    public void methodName(final Marker marker, final MessageSupplier msgSupplier, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, msgSupplier, t);%n    }%n%n    /**%n     * Logs a message which is only to be constructed if the logging level is the%n     * {@code CUSTOM_LEVEL} level. The {@code MessageSupplier} may or may not use the%n     * {@link MessageFactory} to construct the {@code Message}.%n     *%n     * @param msgSupplier A function, which when called, produces the desired log message.%n     * @since Log4j-2.4%n     */%n    public void methodName(final MessageSupplier msgSupplier) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, msgSupplier, (Throwable) null);%n    }%n%n    /**%n     * Logs a message (only to be constructed if the logging level is the {@code CUSTOM_LEVEL}%n     * level) including the stack trace of the {@link Throwable} <code>t</code> passed as parameter.%n     * The {@code MessageSupplier} may or may not use the {@link MessageFactory} to construct the%n     * {@code Message}.%n     *%n     * @param msgSupplier A function, which when called, produces the desired log message.%n     * @param t the exception to log, including its stack trace.%n     * @since Log4j-2.4%n     */%n    public void methodName(final MessageSupplier msgSupplier, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, msgSupplier, t);%n    }%n"

.field static final PACKAGE_DECLARATION:Ljava/lang/String; = "package %s;%n%n"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    return-void
.end method

.method static synthetic access$100([Ljava/lang/String;Lorg/apache/logging/log4j/core/tools/Generate$Type;)V
    .locals 0
    .param p0, "x0"    # [Ljava/lang/String;
    .param p1, "x1"    # Lorg/apache/logging/log4j/core/tools/Generate$Type;

    .line 48
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/tools/Generate;->generate([Ljava/lang/String;Lorg/apache/logging/log4j/core/tools/Generate$Type;)V

    return-void
.end method

.method static synthetic access$200(Ljava/io/PrintStream;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/PrintStream;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 48
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/tools/Generate;->usage(Ljava/io/PrintStream;Ljava/lang/Class;)V

    return-void
.end method

.method static camelCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "customLevel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "customLevel"
        }
    .end annotation

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1162
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1163
    .local v1, "lower":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-char v5, v2, v4

    .line 1164
    .local v5, "ch":C
    const/16 v6, 0x5f

    if-ne v5, v6, :cond_0

    .line 1165
    const/4 v1, 0x0

    .line 1166
    goto :goto_2

    .line 1168
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    goto :goto_1

    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1169
    const/4 v1, 0x1

    .line 1163
    .end local v5    # "ch":C
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1171
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static generate([Ljava/lang/String;Lorg/apache/logging/log4j/core/tools/Generate$Type;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "type"    # Lorg/apache/logging/log4j/core/tools/Generate$Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "args",
            "type"
        }
    .end annotation

    .line 1063
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, p1, v0}, Lorg/apache/logging/log4j/core/tools/Generate;->generate([Ljava/lang/String;Lorg/apache/logging/log4j/core/tools/Generate$Type;Ljava/io/PrintStream;)V

    .line 1064
    return-void
.end method

.method static generate([Ljava/lang/String;Lorg/apache/logging/log4j/core/tools/Generate$Type;Ljava/io/PrintStream;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "type"    # Lorg/apache/logging/log4j/core/tools/Generate$Type;
    .param p2, "printStream"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "args",
            "type",
            "printStream"
        }
    .end annotation

    .line 1091
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/Generate;->validate([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1092
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/tools/Generate$Type;->generator()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/logging/log4j/core/tools/Generate;->usage(Ljava/io/PrintStream;Ljava/lang/Class;)V

    .line 1093
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1095
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1096
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1097
    .local v1, "classFQN":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/tools/Generate$Type;->generator()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;->parse(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 1098
    .local v2, "levels":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;>;"
    invoke-static {v1, v2, p1}, Lorg/apache/logging/log4j/core/tools/Generate;->generateSource(Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/tools/Generate$Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1099
    return-void
.end method

.method public static generateCustom([Ljava/lang/String;Ljava/io/PrintStream;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "printStream"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "args",
            "printStream"
        }
    .end annotation

    .line 1087
    sget-object v0, Lorg/apache/logging/log4j/core/tools/Generate$Type;->CUSTOM:Lorg/apache/logging/log4j/core/tools/Generate$Type;

    invoke-static {p0, v0, p1}, Lorg/apache/logging/log4j/core/tools/Generate;->generate([Ljava/lang/String;Lorg/apache/logging/log4j/core/tools/Generate$Type;Ljava/io/PrintStream;)V

    .line 1088
    return-void
.end method

.method public static generateExtend([Ljava/lang/String;Ljava/io/PrintStream;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "printStream"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "args",
            "printStream"
        }
    .end annotation

    .line 1075
    sget-object v0, Lorg/apache/logging/log4j/core/tools/Generate$Type;->EXTEND:Lorg/apache/logging/log4j/core/tools/Generate$Type;

    invoke-static {p0, v0, p1}, Lorg/apache/logging/log4j/core/tools/Generate;->generate([Ljava/lang/String;Lorg/apache/logging/log4j/core/tools/Generate$Type;Ljava/io/PrintStream;)V

    .line 1076
    return-void
.end method

.method static generateSource(Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/tools/Generate$Type;)Ljava/lang/String;
    .locals 15
    .param p0, "classNameFQN"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/apache/logging/log4j/core/tools/Generate$Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "classNameFQN",
            "levels",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;",
            ">;",
            "Lorg/apache/logging/log4j/core/tools/Generate$Type;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1116
    .local p1, "levels":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;>;"
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1117
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1118
    .local v3, "lastDot":I
    const/4 v4, 0x0

    if-ltz v3, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1119
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_1

    .line 1120
    new-array v6, v7, [Ljava/lang/Object;

    aput-object v5, v6, v4

    const-string v8, "package %s;%n%n"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/tools/Generate$Type;->imports()Ljava/lang/String;

    move-result-object v6

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, ""

    aput-object v9, v8, v4

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, v7

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1124
    .local v2, "className":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lorg/apache/logging/log4j/core/tools/Generate;->javadocDescription(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 1125
    .local v6, "javadocDescr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/tools/Generate$Type;->declaration()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v6, v11, v4

    aput-object v2, v11, v7

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    new-array v8, v7, [Ljava/lang/Object;

    aput-object v2, v8, v4

    const-string v11, "    private static final String FQCN = %s.class.getName();%n"

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;

    .line 1128
    .local v11, "level":Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, v11, Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;->name:Ljava/lang/String;

    aput-object v13, v12, v4

    iget-object v13, v11, Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;->name:Ljava/lang/String;

    aput-object v13, v12, v7

    iget v13, v11, Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;->intLevel:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "    private static final Level %s = Level.forName(\"%s\", %d);%n"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    .end local v11    # "level":Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;
    goto :goto_1

    .line 1130
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/tools/Generate$Type;->constructor()Ljava/lang/String;

    move-result-object v8

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v2, v10, v4

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    const-string v8, "%n    /**%n     * Returns a custom Logger with the name of the calling class.%n     * %n     * @return The custom Logger for the calling class.%n     */%n    public static CLASSNAME create() {%n        final Logger wrapped = LogManager.getLogger();%n        return new CLASSNAME(wrapped);%n    }%n%n    /**%n     * Returns a custom Logger using the fully qualified name of the Class as%n     * the Logger name.%n     * %n     * @param loggerName The Class whose name should be used as the Logger name.%n     *            If null it will default to the calling class.%n     * @return The custom Logger.%n     */%n    public static CLASSNAME create(final Class<?> loggerName) {%n        final Logger wrapped = LogManager.getLogger(loggerName);%n        return new CLASSNAME(wrapped);%n    }%n%n    /**%n     * Returns a custom Logger using the fully qualified name of the Class as%n     * the Logger name.%n     * %n     * @param loggerName The Class whose name should be used as the Logger name.%n     *            If null it will default to the calling class.%n     * @param messageFactory The message factory is used only when creating a%n     *            logger, subsequent use does not change the logger but will log%n     *            a warning if mismatched.%n     * @return The custom Logger.%n     */%n    public static CLASSNAME create(final Class<?> loggerName, final MessageFactory messageFactory) {%n        final Logger wrapped = LogManager.getLogger(loggerName, messageFactory);%n        return new CLASSNAME(wrapped);%n    }%n%n    /**%n     * Returns a custom Logger using the fully qualified class name of the value%n     * as the Logger name.%n     * %n     * @param value The value whose class name should be used as the Logger%n     *            name. If null the name of the calling class will be used as%n     *            the logger name.%n     * @return The custom Logger.%n     */%n    public static CLASSNAME create(final Object value) {%n        final Logger wrapped = LogManager.getLogger(value);%n        return new CLASSNAME(wrapped);%n    }%n%n    /**%n     * Returns a custom Logger using the fully qualified class name of the value%n     * as the Logger name.%n     * %n     * @param value The value whose class name should be used as the Logger%n     *            name. If null the name of the calling class will be used as%n     *            the logger name.%n     * @param messageFactory The message factory is used only when creating a%n     *            logger, subsequent use does not change the logger but will log%n     *            a warning if mismatched.%n     * @return The custom Logger.%n     */%n    public static CLASSNAME create(final Object value, final MessageFactory messageFactory) {%n        final Logger wrapped = LogManager.getLogger(value, messageFactory);%n        return new CLASSNAME(wrapped);%n    }%n%n    /**%n     * Returns a custom Logger with the specified name.%n     * %n     * @param name The logger name. If null the name of the calling class will%n     *            be used.%n     * @return The custom Logger.%n     */%n    public static CLASSNAME create(final String name) {%n        final Logger wrapped = LogManager.getLogger(name);%n        return new CLASSNAME(wrapped);%n    }%n%n    /**%n     * Returns a custom Logger with the specified name.%n     * %n     * @param name The logger name. If null the name of the calling class will%n     *            be used.%n     * @param messageFactory The message factory is used only when creating a%n     *            logger, subsequent use does not change the logger but will log%n     *            a warning if mismatched.%n     * @return The custom Logger.%n     */%n    public static CLASSNAME create(final String name, final MessageFactory messageFactory) {%n        final Logger wrapped = LogManager.getLogger(name, messageFactory);%n        return new CLASSNAME(wrapped);%n    }%n"

    const-string v10, "CLASSNAME"

    invoke-virtual {v8, v10, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v9, v10, v4

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;

    .line 1133
    .local v10, "level":Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;
    iget-object v11, v10, Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;->name:Ljava/lang/String;

    invoke-static {v11}, Lorg/apache/logging/log4j/core/tools/Generate;->camelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1134
    .local v11, "methodName":Ljava/lang/String;
    iget-object v12, v10, Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;->name:Ljava/lang/String;

    const-string v13, "%n    /**%n     * Logs a message with the specific Marker at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param msg the message string to be logged%n     */%n    public void methodName(final Marker marker, final Message msg) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, msg, (Throwable) null);%n    }%n%n    /**%n     * Logs a message with the specific Marker at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param msg the message string to be logged%n     * @param t A Throwable or null.%n     */%n    public void methodName(final Marker marker, final Message msg, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, msg, t);%n    }%n%n    /**%n     * Logs a message object with the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message object to log.%n     */%n    public void methodName(final Marker marker, final Object message) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, (Throwable) null);%n    }%n%n    /**%n     * Logs a message CharSequence with the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message CharSequence to log.%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final CharSequence message) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, (Throwable) null);%n    }%n%n    /**%n     * Logs a message at the {@code CUSTOM_LEVEL} level including the stack trace of%n     * the {@link Throwable} {@code t} passed as parameter.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log.%n     * @param t the exception to log, including its stack trace.%n     */%n    public void methodName(final Marker marker, final Object message, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, t);%n    }%n%n    /**%n     * Logs a message at the {@code CUSTOM_LEVEL} level including the stack trace of%n     * the {@link Throwable} {@code t} passed as parameter.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the CharSequence to log.%n     * @param t the exception to log, including its stack trace.%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final CharSequence message, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, t);%n    }%n%n    /**%n     * Logs a message object with the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message object to log.%n     */%n    public void methodName(final Marker marker, final String message) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, (Throwable) null);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param params parameters to the message.%n     * @see #getMessageFactory()%n     */%n    public void methodName(final Marker marker, final String message, final Object... params) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, params);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0, final Object p1) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0, p1);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0, final Object p1, final Object p2) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0, p1, p2);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0, p1, p2, p3);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0, p1, p2, p3, p4);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0, p1, p2, p3, p4, p5);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @param p6 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5, final Object p6) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0, p1, p2, p3, p4, p5, p6);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @param p6 parameter to the message.%n     * @param p7 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5, final Object p6,%n            final Object p7) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0, p1, p2, p3, p4, p5, p6, p7);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @param p6 parameter to the message.%n     * @param p7 parameter to the message.%n     * @param p8 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5, final Object p6,%n            final Object p7, final Object p8) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @param p6 parameter to the message.%n     * @param p7 parameter to the message.%n     * @param p8 parameter to the message.%n     * @param p9 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final Marker marker, final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5, final Object p6,%n            final Object p7, final Object p8, final Object p9) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);%n    }%n%n    /**%n     * Logs a message at the {@code CUSTOM_LEVEL} level including the stack trace of%n     * the {@link Throwable} {@code t} passed as parameter.%n     * %n     * @param marker the marker data specific to this log statement%n     * @param message the message to log.%n     * @param t the exception to log, including its stack trace.%n     */%n    public void methodName(final Marker marker, final String message, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, t);%n    }%n%n    /**%n     * Logs the specified Message at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param msg the message string to be logged%n     */%n    public void methodName(final Message msg) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, msg, (Throwable) null);%n    }%n%n    /**%n     * Logs the specified Message at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param msg the message string to be logged%n     * @param t A Throwable or null.%n     */%n    public void methodName(final Message msg, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, msg, t);%n    }%n%n    /**%n     * Logs a message object with the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message object to log.%n     */%n    public void methodName(final Object message) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, (Throwable) null);%n    }%n%n    /**%n     * Logs a message at the {@code CUSTOM_LEVEL} level including the stack trace of%n     * the {@link Throwable} {@code t} passed as parameter.%n     * %n     * @param message the message to log.%n     * @param t the exception to log, including its stack trace.%n     */%n    public void methodName(final Object message, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, t);%n    }%n%n    /**%n     * Logs a message CharSequence with the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message CharSequence to log.%n     * @since Log4j-2.6%n     */%n    public void methodName(final CharSequence message) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, (Throwable) null);%n    }%n%n    /**%n     * Logs a CharSequence at the {@code CUSTOM_LEVEL} level including the stack trace of%n     * the {@link Throwable} {@code t} passed as parameter.%n     * %n     * @param message the CharSequence to log.%n     * @param t the exception to log, including its stack trace.%n     * @since Log4j-2.6%n     */%n    public void methodName(final CharSequence message, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, t);%n    }%n%n    /**%n     * Logs a message object with the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message object to log.%n     */%n    public void methodName(final String message) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, (Throwable) null);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param params parameters to the message.%n     * @see #getMessageFactory()%n     */%n    public void methodName(final String message, final Object... params) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, params);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0, final Object p1) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0, p1);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0, final Object p1, final Object p2) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0, p1, p2);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0, p1, p2, p3);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0, p1, p2, p3, p4);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0, p1, p2, p3, p4, p5);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @param p6 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5, final Object p6) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0, p1, p2, p3, p4, p5, p6);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @param p6 parameter to the message.%n     * @param p7 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5, final Object p6,%n            final Object p7) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0, p1, p2, p3, p4, p5, p6, p7);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @param p6 parameter to the message.%n     * @param p7 parameter to the message.%n     * @param p8 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5, final Object p6,%n            final Object p7, final Object p8) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0, p1, p2, p3, p4, p5, p6, p7, p8);%n    }%n%n    /**%n     * Logs a message with parameters at the {@code CUSTOM_LEVEL} level.%n     * %n     * @param message the message to log; the format depends on the message factory.%n     * @param p0 parameter to the message.%n     * @param p1 parameter to the message.%n     * @param p2 parameter to the message.%n     * @param p3 parameter to the message.%n     * @param p4 parameter to the message.%n     * @param p5 parameter to the message.%n     * @param p6 parameter to the message.%n     * @param p7 parameter to the message.%n     * @param p8 parameter to the message.%n     * @param p9 parameter to the message.%n     * @see #getMessageFactory()%n     * @since Log4j-2.6%n     */%n    public void methodName(final String message, final Object p0, final Object p1, final Object p2,%n            final Object p3, final Object p4, final Object p5, final Object p6,%n            final Object p7, final Object p8, final Object p9) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);%n    }%n%n    /**%n     * Logs a message at the {@code CUSTOM_LEVEL} level including the stack trace of%n     * the {@link Throwable} {@code t} passed as parameter.%n     * %n     * @param message the message to log.%n     * @param t the exception to log, including its stack trace.%n     */%n    public void methodName(final String message, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, t);%n    }%n%n    /**%n     * Logs a message which is only to be constructed if the logging level is the {@code CUSTOM_LEVEL}level.%n     *%n     * @param msgSupplier A function, which when called, produces the desired log message;%n     *            the format depends on the message factory.%n     * @since Log4j-2.4%n     */%n    public void methodName(final Supplier<?> msgSupplier) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, msgSupplier, (Throwable) null);%n    }%n%n    /**%n     * Logs a message (only to be constructed if the logging level is the {@code CUSTOM_LEVEL}%n     * level) including the stack trace of the {@link Throwable} <code>t</code> passed as parameter.%n     *%n     * @param msgSupplier A function, which when called, produces the desired log message;%n     *            the format depends on the message factory.%n     * @param t the exception to log, including its stack trace.%n     * @since Log4j-2.4%n     */%n    public void methodName(final Supplier<?> msgSupplier, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, msgSupplier, t);%n    }%n%n    /**%n     * Logs a message which is only to be constructed if the logging level is the%n     * {@code CUSTOM_LEVEL} level with the specified Marker.%n     *%n     * @param marker the marker data specific to this log statement%n     * @param msgSupplier A function, which when called, produces the desired log message;%n     *            the format depends on the message factory.%n     * @since Log4j-2.4%n     */%n    public void methodName(final Marker marker, final Supplier<?> msgSupplier) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, msgSupplier, (Throwable) null);%n    }%n%n    /**%n     * Logs a message with parameters which are only to be constructed if the logging level is the%n     * {@code CUSTOM_LEVEL} level.%n     *%n     * @param marker the marker data specific to this log statement%n     * @param message the message to log; the format depends on the message factory.%n     * @param paramSuppliers An array of functions, which when called, produce the desired log message parameters.%n     * @since Log4j-2.4%n     */%n    public void methodName(final Marker marker, final String message, final Supplier<?>... paramSuppliers) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, message, paramSuppliers);%n    }%n%n    /**%n     * Logs a message (only to be constructed if the logging level is the {@code CUSTOM_LEVEL}%n     * level) with the specified Marker and including the stack trace of the {@link Throwable}%n     * <code>t</code> passed as parameter.%n     *%n     * @param marker the marker data specific to this log statement%n     * @param msgSupplier A function, which when called, produces the desired log message;%n     *            the format depends on the message factory.%n     * @param t A Throwable or null.%n     * @since Log4j-2.4%n     */%n    public void methodName(final Marker marker, final Supplier<?> msgSupplier, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, msgSupplier, t);%n    }%n%n    /**%n     * Logs a message with parameters which are only to be constructed if the logging level is%n     * the {@code CUSTOM_LEVEL} level.%n     *%n     * @param message the message to log; the format depends on the message factory.%n     * @param paramSuppliers An array of functions, which when called, produce the desired log message parameters.%n     * @since Log4j-2.4%n     */%n    public void methodName(final String message, final Supplier<?>... paramSuppliers) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, message, paramSuppliers);%n    }%n%n    /**%n     * Logs a message which is only to be constructed if the logging level is the%n     * {@code CUSTOM_LEVEL} level with the specified Marker. The {@code MessageSupplier} may or may%n     * not use the {@link MessageFactory} to construct the {@code Message}.%n     *%n     * @param marker the marker data specific to this log statement%n     * @param msgSupplier A function, which when called, produces the desired log message.%n     * @since Log4j-2.4%n     */%n    public void methodName(final Marker marker, final MessageSupplier msgSupplier) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, msgSupplier, (Throwable) null);%n    }%n%n    /**%n     * Logs a message (only to be constructed if the logging level is the {@code CUSTOM_LEVEL}%n     * level) with the specified Marker and including the stack trace of the {@link Throwable}%n     * <code>t</code> passed as parameter. The {@code MessageSupplier} may or may not use the%n     * {@link MessageFactory} to construct the {@code Message}.%n     *%n     * @param marker the marker data specific to this log statement%n     * @param msgSupplier A function, which when called, produces the desired log message.%n     * @param t A Throwable or null.%n     * @since Log4j-2.4%n     */%n    public void methodName(final Marker marker, final MessageSupplier msgSupplier, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, marker, msgSupplier, t);%n    }%n%n    /**%n     * Logs a message which is only to be constructed if the logging level is the%n     * {@code CUSTOM_LEVEL} level. The {@code MessageSupplier} may or may not use the%n     * {@link MessageFactory} to construct the {@code Message}.%n     *%n     * @param msgSupplier A function, which when called, produces the desired log message.%n     * @since Log4j-2.4%n     */%n    public void methodName(final MessageSupplier msgSupplier) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, msgSupplier, (Throwable) null);%n    }%n%n    /**%n     * Logs a message (only to be constructed if the logging level is the {@code CUSTOM_LEVEL}%n     * level) including the stack trace of the {@link Throwable} <code>t</code> passed as parameter.%n     * The {@code MessageSupplier} may or may not use the {@link MessageFactory} to construct the%n     * {@code Message}.%n     *%n     * @param msgSupplier A function, which when called, produces the desired log message.%n     * @param t the exception to log, including its stack trace.%n     * @since Log4j-2.4%n     */%n    public void methodName(final MessageSupplier msgSupplier, final Throwable t) {%n        logger.logIfEnabled(FQCN, CUSTOM_LEVEL, null, msgSupplier, t);%n    }%n"

    const-string v14, "CUSTOM_LEVEL"

    invoke-virtual {v13, v14, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1135
    .local v12, "phase1":Ljava/lang/String;
    const-string v13, "methodName"

    invoke-virtual {v12, v13, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1136
    .local v13, "phase2":Ljava/lang/String;
    new-array v14, v7, [Ljava/lang/Object;

    aput-object v9, v14, v4

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    .end local v10    # "level":Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;
    .end local v11    # "methodName":Ljava/lang/String;
    .end local v12    # "phase1":Ljava/lang/String;
    .end local v13    # "phase2":Ljava/lang/String;
    goto :goto_2

    .line 1139
    :cond_3
    const/16 v4, 0x7d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1140
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static javadocDescription(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "levels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1145
    .local p0, "levels":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "the "

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;

    iget-object v1, v1, Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " custom log level."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1148
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1149
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    const-string v1, ""

    .line 1151
    .local v1, "sep":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;

    iget-object v3, v3, Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ne v2, v3, :cond_1

    const-string v3, " and "

    goto :goto_1

    :cond_1
    const-string v3, ", "

    :goto_1
    move-object v1, v3

    .line 1151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1156
    .end local v2    # "i":I
    :cond_2
    const-string v2, " custom log levels."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static usage(Ljava/io/PrintStream;Ljava/lang/Class;)V
    .locals 2
    .param p0, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "out",
            "generator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1109
    .local p1, "generator":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Usage: java "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " className LEVEL1=intLevel1 [LEVEL2=intLevel2...]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1110
    const-string v0, "       Where className is the fully qualified class name of the custom/extended logger"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1111
    const-string v0, "       to generate, followed by a space-separated list of custom log levels."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1112
    const-string v0, "       For each custom log level, specify NAME=intLevel (without spaces)."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1113
    return-void
.end method

.method static validate([Ljava/lang/String;)Z
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "args"
        }
    .end annotation

    .line 1102
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1103
    const/4 v0, 0x0

    return v0

    .line 1105
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
