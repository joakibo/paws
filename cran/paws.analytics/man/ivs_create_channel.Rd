% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ivs_operations.R
\name{ivs_create_channel}
\alias{ivs_create_channel}
\title{Creates a new channel and an associated stream key to start streaming}
\usage{
ivs_create_channel(
  authorized = NULL,
  insecureIngest = NULL,
  latencyMode = NULL,
  name = NULL,
  preset = NULL,
  recordingConfigurationArn = NULL,
  tags = NULL,
  type = NULL
)
}
\arguments{
\item{authorized}{Whether the channel is private (enabled for playback authorization).
Default: \code{false}.}

\item{insecureIngest}{Whether the channel allows insecure RTMP ingest. Default: \code{false}.}

\item{latencyMode}{Channel latency mode. Use \code{NORMAL} to broadcast and deliver live video
up to Full HD. Use \code{LOW} for near-real-time interaction with viewers.
(Note: In the Amazon IVS console, \code{LOW} and \code{NORMAL} correspond to
Ultra-low and Standard, respectively.) Default: \code{LOW}.}

\item{name}{Channel name.}

\item{preset}{Optional transcode preset for the channel. This is selectable only for
\code{ADVANCED_HD} and \code{ADVANCED_SD} channel types. For those channel types,
the default \code{preset} is \code{HIGHER_BANDWIDTH_DELIVERY}. For other channel
types (\code{BASIC} and \code{STANDARD}), \code{preset} is the empty string (\code{""}).}

\item{recordingConfigurationArn}{Recording-configuration ARN. Default: "" (empty string, recording is
disabled).}

\item{tags}{Array of 1-50 maps, each of the form \code{string:string (key:value)}. See
\href{https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html}{Tagging Amazon Web Services Resources}
for more information, including restrictions that apply to tags and "Tag
naming limits and requirements"; Amazon IVS has no service-specific
constraints beyond what is documented there.}

\item{type}{Channel type, which determines the allowable resolution and bitrate. \emph{If
you exceed the allowable input resolution or bitrate, the stream
probably will disconnect immediately.} Some types generate multiple
qualities (renditions) from the original input; this automatically gives
viewers the best experience for their devices and network conditions.
Some types provide transcoded video; transcoding allows higher playback
quality across a range of download speeds. Default: \code{STANDARD}. Valid
values:
\itemize{
\item \code{BASIC}: Video is transmuxed: Amazon IVS delivers the original input
quality to viewers. The viewer’s video-quality choice is limited to
the original input. Input resolution can be up to 1080p and bitrate
can be up to 1.5 Mbps for 480p and up to 3.5 Mbps for resolutions
between 480p and 1080p. Original audio is passed through.
\item \code{STANDARD}: Video is transcoded: multiple qualities are generated
from the original input, to automatically give viewers the best
experience for their devices and network conditions. Transcoding
allows higher playback quality across a range of download speeds.
Resolution can be up to 1080p and bitrate can be up to 8.5 Mbps.
Audio is transcoded only for renditions 360p and below; above that,
audio is passed through. This is the default when you create a
channel.
\item \code{ADVANCED_SD}: Video is transcoded; multiple qualities are generated
from the original input, to automatically give viewers the best
experience for their devices and network conditions. Input
resolution can be up to 1080p and bitrate can be up to 8.5 Mbps;
output is capped at SD quality (480p). You can select an optional
transcode preset (see below). Audio for all renditions is
transcoded, and an audio-only rendition is available.
\item \code{ADVANCED_HD}: Video is transcoded; multiple qualities are generated
from the original input, to automatically give viewers the best
experience for their devices and network conditions. Input
resolution can be up to 1080p and bitrate can be up to 8.5 Mbps;
output is capped at HD quality (720p). You can select an optional
transcode preset (see below). Audio for all renditions is
transcoded, and an audio-only rendition is available.
}

Optional \emph{transcode presets} (available for the \code{ADVANCED} types) allow
you to trade off available download bandwidth and video quality, to
optimize the viewing experience. There are two presets:
\itemize{
\item \emph{Constrained bandwidth delivery} uses a lower bitrate for each
quality level. Use it if you have low download bandwidth and/or
simple video content (e.g., talking heads)
\item \emph{Higher bandwidth delivery} uses a higher bitrate for each quality
level. Use it if you have high download bandwidth and/or complex
video content (e.g., flashes and quick scene changes).
}}
}
\description{
Creates a new channel and an associated stream key to start streaming.

See \url{https://www.paws-r-sdk.com/docs/ivs_create_channel/} for full documentation.
}
\keyword{internal}
