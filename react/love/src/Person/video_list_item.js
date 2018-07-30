import React from 'react';

const VideoListItem = ({video}) => {
const imageUrl = video.snippet.thumbnails.default.url;
return (

<li>
<img src={imageUrl} />
{video.snippet.title}
</li>
)

};

export default VideoListItem;
