#version 450 core
layout(location = 0) in vec3 in_Position;
layout(location = 1) in vec3 in_Normal;

uniform mat4 u_Model, u_View, u_Proj;
uniform vec4 u_LightPosition;

//out vec2 fragTexCoord;
out vec3 /*fragnormal,*/ frag_Pos;
out float frag_Ldistance;
out vec3 frag_Color;

void main(){
	mat4 u_MVP = u_Proj * u_View * u_Model;
	frag_Ldistance = distance(u_LightPosition.xyz, in_Position);


	vec3 pos = (u_MVP * vec4(in_Position.xyz, 1.0f)).xyz;

	frag_Pos = pos;
	//fragnormal = in_Normal;

	gl_Position = u_MVP * vec4(in_Position.xyz, 1.0f) ;
	//fragTexCoord = in_TexCoord;
	frag_Color = vec3(0.0f, 0.0f, 1.0f);
}